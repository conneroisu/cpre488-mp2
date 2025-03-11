#include "camera_app.h"
#include "xil_types.h"
#include "xvprocss.h"
#include "xscugic.h"
#include "xtime_l.h"
#include <stdio.h>
#include <stdlib.h>
#include "include/controls/control.h"
#include "platform.h"
#include "xil_io.h"

typedef enum settings_state
{
	CONTRAST = 0x1,
	BRIGHTNESS = 0x2,
	SATURATION = 0x3,
} t_settings_state;

t_settings_state settings_state = CONTRAST;

void print_state(t_settings_state settings_state)
{
	switch (settings_state)
	{
	case CONTRAST:
		xil_printf("Contrast\n\r");
		break;
	case BRIGHTNESS:
		xil_printf("Brightness\n\r");
		break;
	case SATURATION:
		xil_printf("Saturation\n\r");
		break;
	default:

		xil_printf("Unknown\n\r");
		break;
	}
}
#define MAX_FPS_ENTRIES 100
#define OUTPUT_FPS 0

typedef struct fps
{
	int next_to_write;
	int size;
	float entries[MAX_FPS_ENTRIES];
} fps_t;


// Timing globals
static fps_t fps;

static XTime tStart, tEnd = 0;

// In seconds
static float fps_reading = 0;

static int rec_flag = 0;
static u8 prev_frame = 255;

// To store frame time message
static char* fps_msg = 0;

camera_config_t camera_config;

void fps_init(fps_t* f)
{
	f->next_to_write = 0;
	f->size = 0;

	for(int i = 0; i < MAX_FPS_ENTRIES; ++i)
	{
		f->entries[i] = 0;
	}
}

void fps_time_store(fps_t* f, float time)
{
	f->entries[f->next_to_write] = time;

	if(f->next_to_write == (MAX_FPS_ENTRIES - 1))
	{
		f->next_to_write = 0;
	}
	else
	{
		f->next_to_write++;
	}

	if(f->size != MAX_FPS_ENTRIES)
	{
		f->size++;
	}
}

float fps_calculate(fps_t* f)
{
	float sum = 0;

	for(int i = 0; i < f->size; ++i)
	{
		sum += f->entries[i];
	}

	return f->size / sum;
}

// Swaps the memory addresses associated with the frame pointers
void set_start_address(XAxiVdma* vdma, u16 dir, u8 frame, u16* addr)
{
	u32 start_addr_offset = dir == XAXIVDMA_WRITE ? 0xAC : 0x5C;
	u32 vsize_offset = dir == XAXIVDMA_WRITE ? 0xA0 : 0x50;
	frame &= 0x1F;

#define START_ADDR *((volatile u32*) (vdma->BaseAddr + start_addr_offset + (frame * 0x4)))
#define VSIZE *((volatile u32*) (vdma->BaseAddr + vsize_offset))

	START_ADDR = (u32)addr;

	// Apply the change
	VSIZE = VSIZE;

#undef START_ADDR
#undef VSIZE
}

u16* get_start_address(XAxiVdma* vdma, u16 dir, u8 frame)
{
	u32 start_addr_offset = dir == XAXIVDMA_WRITE ? 0xAC : 0x5C;
	frame &= 0x1F;

#define START_ADDR *((volatile u32*) (vdma->BaseAddr + start_addr_offset + (frame * 0x4)))

	return (u16*)START_ADDR;

#undef START_ADDR
}

u8 get_current_frame_pointer(XAxiVdma* vdma, u16 dir)
{

	u8 result = 0;

	u32 mask = 0;
	u32 shift_amt = 0;

	if(dir == XAXIVDMA_READ)
	{
		mask = 0x1F0000;
		shift_amt = 16;
	}
	else if(dir == XAXIVDMA_WRITE)
	{
		mask = 0x1F00000;
		shift_amt = 24;
	}

	result = (*((volatile u32*) (vdma->BaseAddr + XAXIVDMA_PARKPTR_OFFSET)) & mask) >> shift_amt;

	return result;
}

void set_park_frame(XAxiVdma* vdma, u8 frame, u16 dir)
{
#define	PARK *((volatile u32*) (vdma->BaseAddr + XAXIVDMA_PARKPTR_OFFSET))

	u32 mask = 0;
	u32 shift_amt = 0;

	if(dir == XAXIVDMA_READ)
	{
		mask = ~0x1F;
	}
	else if(dir == XAXIVDMA_WRITE)
	{
		mask = ~0x1F0;
		shift_amt = 8;
	}

	PARK = (PARK & mask) | ((u32)(frame & 0x1F) << shift_amt);


#undef PARK
}

camera_config_t camera_config;

void error_isr(void* CallBackRef, u32 InterruptTypes)
{
	xil_printf("VDMA error %X occurred!!!\n\r", InterruptTypes);
}

void video_frame_output_isr(void* CallBackRef, u32 InterruptTypes)
{
	switch(InterruptTypes)
	{
		case XAXIVDMA_IXR_FRMCNT_MASK:
		{
			u8 current_frame = get_current_frame_pointer((XAxiVdma*) CallBackRef, XAXIVDMA_READ);

			// Make sure we received something before recording that we wrote it.
			if(rec_flag && (current_frame != prev_frame))
			{
				// If first frame, start only
				if(!tStart)
				{
					XTime_GetTime(&tStart);
				}
				else
				{
					XTime_GetTime(&tEnd);

					fps_reading = (tEnd - tStart) / (float)COUNTS_PER_SECOND;

					fps_time_store(&fps, fps_reading);

#if OUTPUT_FPS
					sprintf(fps_msg, "Average FPS: %.5f", fps_calculate(&fps));

					xil_printf("%s\n\r", fps_msg);
#endif

					// Start the timer back up!
					XTime_GetTime(&tStart);
				}

				rec_flag = 0;
			}

			prev_frame = current_frame;
		}

		default:
		{
			break;
		}
	}

}

// Does nothing as of now. All timer operations are done when a frame is drawn to the screen.
void camera_input_isr(void* CallBackRef, u32 InterruptTypes)
{
	switch(InterruptTypes)
	{
		case XAXIVDMA_IXR_FRMCNT_MASK:
		{
			if(!rec_flag)
			{
				rec_flag = 1;
			}
			break;
		}


		default:
		{
			break;
		}
	}

}

u32 button_state, switch_state = 0;

// Picture data
#define MAX_PICTURE_COUNT 32
#define PIXELS 2073600
u16* pictures[MAX_PICTURE_COUNT];
int picture_count = 0;
int next_picture_write = 0;
int current_picture = 0;
int gallery_enabled = 0;

void enable_gallery(XAxiVdma* vdma)
{
	// Make sure a picture is saved first!
	if(picture_count)
	{
		gallery_enabled = 1;

		set_start_address(vdma, XAXIVDMA_READ, 0, pictures[current_picture]);
		while(get_start_address(vdma, XAXIVDMA_READ, 0) != pictures[current_picture])
		{

		}

		// Update the read park to be on 0.
		set_park_frame(vdma, 0, XAXIVDMA_READ);

		// Wait for the change to go through.
		while(get_current_frame_pointer(vdma, XAXIVDMA_READ))
		{

		}

		xil_printf("Gallery Enabled! Viewing picture %d\n\r", current_picture + 1);
	}
	else
	{
		xil_printf("Can't enable gallery since no pictures have been taken! Please take a picture and try again!\n\r");
	}

}

void disable_gallery(XAxiVdma* vdma)
{
	// Update the read park to be on 1.
	set_park_frame(vdma, 1, XAXIVDMA_READ);

	// Wait for the change to go through.
	while(!get_current_frame_pointer(vdma, XAXIVDMA_READ))
	{

	}

	gallery_enabled = 0;

	xil_printf("Gallery Disabled!\n\r");
}

void change_picture(XAxiVdma* vdma, int forward)
{
	// Only allow in gallery mode
	if(gallery_enabled)
	{
		if(forward)
		{
			if(current_picture == (picture_count - 1))
			{
				current_picture = 0;
			}
			else
			{
				current_picture++;
			}
		}
		else
		{
			if(current_picture == 0)
			{
				current_picture = (picture_count - 1);
			}
			else
			{
				current_picture--;
			}
		}

		set_start_address(vdma, XAXIVDMA_READ, 0, pictures[current_picture]);
		while(get_start_address(vdma, XAXIVDMA_READ, 0) != pictures[current_picture])
		{

		}

		xil_printf("Now viewing picture %d\n\r", current_picture + 1);
	}
}

void take_picture(XAxiVdma* vdma)
{
	if(picture_count != MAX_PICTURE_COUNT)
	{
		picture_count++;
	}

	xil_printf("Capturing picture %d\n\r", next_picture_write + 1);

	// Update the start address of frame 0 on the WRITE side.
	set_start_address(vdma, XAXIVDMA_WRITE, 0, pictures[next_picture_write]);

	// Wait until the start address has updated.
	while(get_start_address(vdma, XAXIVDMA_WRITE, 0) != pictures[next_picture_write])
	{

	}

	// Update the write park to be on 0.
	set_park_frame(vdma, 0, XAXIVDMA_WRITE);

	// Wait for the change to go through.
	while(get_current_frame_pointer(vdma, XAXIVDMA_WRITE))
	{

	}

	// Update the write park to be on 1.
	set_park_frame(vdma, 1, XAXIVDMA_WRITE);

	// Wait for the change to go through.
	while(!get_current_frame_pointer(vdma, XAXIVDMA_WRITE))
	{

	}

	current_picture = next_picture_write;

	enable_gallery(vdma);

	// Leave for 2 seconds.
	sleep(2);

	disable_gallery(vdma);

	// Wrap around if wrote last picture.
	if(next_picture_write == (MAX_PICTURE_COUNT - 1))
	{
		next_picture_write = 0;
	}
	else
	{
		next_picture_write++;
	}
}

// Main function. Initializes the devices and configures VDMA
int main()
{
	int left_right_pressed = 0;
	int left_right_released = 0;

    init_platform();
	init_interface();

	// Init FPS
	fps_init(&fps);

	fps_msg = (char*) calloc(64, sizeof(char*));

	// Allocate space for the pictures.
	for(int i = 0; i < MAX_PICTURE_COUNT; ++i)
	{
		pictures[i] = (u16*) calloc(PIXELS, sizeof(u16));
	}

	// Camera Init
	camera_config_init(&camera_config);
	fmc_imageon_enable(&camera_config);
	//camera_loop(&camera_config);

	// Park both READ and WRITE channels on frame 1.
	set_park_frame(&(camera_config.vdma_hdmi), 1, XAXIVDMA_WRITE);
	set_park_frame(&(camera_config.vdma_hdmi), 1, XAXIVDMA_READ);

	// Enable park.
#define READ_CR *((volatile u32*)(camera_config.vdma_hdmi.BaseAddr + XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET))
#define WRITE_CR *((volatile u32*)(camera_config.vdma_hdmi.BaseAddr + XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET))

	READ_CR &= ~0x2;
	WRITE_CR &= ~0x2;

#undef READ_CR
#undef WRITE_CR

	while (1)
	{
		button_state = get_button_states();
		switch_state = get_switch_states();

		// Determine if LEFT or RIGHT is pressed
		left_right_pressed = button_pressed(LEFT, button_state) || button_pressed(RIGHT, button_state);

		// See if right and left have been released after a press.
		if(!left_right_pressed)
		{
			left_right_released = 1;
		}

		// SW 0 enables gallery mode.
		if(switch_state & 0x1)
		{
			if(!gallery_enabled)
			{
				enable_gallery(&(camera_config.vdma_hdmi));
			}

			if(left_right_pressed && left_right_released)
			{
				left_right_released = 0;

				// Previous image
				if(button_pressed(LEFT, button_state))
				{
					change_picture(&(camera_config.vdma_hdmi), 0);
				}
				// Next image
				else if(button_pressed(RIGHT, button_state))
				{
					change_picture(&(camera_config.vdma_hdmi), 1);
				}
			}

		}
		// SW 1 enables picture settings.
		else if(switch_state & 0x2)
		{
			// Only adjust when button has been released and then pressed.
			if(left_right_pressed && left_right_released)
			{
				left_right_released = 0;
				if (button_pressed(RIGHT, button_state))
				{
					settings_state = (settings_state + 1) % 4;
					print_state(settings_state);
				}
				else if (button_pressed(LEFT, button_state))
				{
					settings_state = (settings_state - 1) % 4;
					print_state(settings_state);
				}

			}

			// Allow continous set for picture settings.
			if (button_pressed(UP, button_state))
			{
				// Increase the value of the current setting
				switch (settings_state)
				{
				case CONTRAST:
					increase_contrast(&camera_config);
					break;
				case BRIGHTNESS:
					increase_brightness(&camera_config);
					break;
				case SATURATION:
					increase_saturation(&camera_config);
					break;
				default:
					break;
				}
			}
			else if (button_pressed(DOWN, button_state))
			{
				// Decrease the value of the current setting
				switch (settings_state)
				{
				case CONTRAST:
					decrease_contrast(&camera_config);
					break;
				case BRIGHTNESS:
					decrease_brightness(&camera_config);
					break;
				case SATURATION:
					decrease_saturation(&camera_config);
					break;
				default:
					break;
				}
			}
		}
		// No modes activated, allow user to take a picture.
		else
		{
			if(button_pressed(CENTER, button_state))
			{
				take_picture(&(camera_config.vdma_hdmi));
			}
		}

		// Disable gallery when SW0 is low.
		if(!(switch_state & 0x1) && gallery_enabled)
		{
			disable_gallery(&(camera_config.vdma_hdmi));
		}

		// Set input polling rate
		usleep(100000);
	}

	return 0;
}

// Initialize the camera configuration data structure
void camera_config_init(camera_config_t *config)
{
	config->uBaseAddr_IIC_FmcIpmi = XPAR_FMC_IPMI_ID_EEPROM_0_BASEADDR; // Device for reading HDMI board IPMI EEPROM information
	config->uBaseAddr_IIC_FmcImageon = XPAR_FMC_IMAGEON_IIC_0_BASEADDR; // Device for configuring the HDMI board

	config->uBaseAddr_VITA_SPI = XPAR_ONSEMI_VITA_SPI_0_S00_AXI_BASEADDR; // Device for configuring the Camera sensor
	config->uBaseAddr_VITA_CAM = XPAR_ONSEMI_VITA_CAM_0_S00_AXI_BASEADDR; // Device for receiving Camera sensor data

	config->uDeviceId_VTC_tpg = XPAR_V_TC_0_DEVICE_ID;							// Video Timer Controller (VTC) ID
	config->uDeviceId_VDMA_HdmiFrameBuffer = XPAR_AXI_VDMA_0_DEVICE_ID;			// VDMA ID
	config->uBaseAddr_MEM_HdmiFrameBuffer = XPAR_DDR_MEM_BASEADDR + 0x10000000; // VDMA base address for Frame buffers
	config->uNumFrames_HdmiFrameBuffer = XPAR_AXIVDMA_0_NUM_FSTORES;			// NUmber of VDMA Frame buffers

	return;
}

