#include "camera_app.h"
#include "xil_types.h"
#include "xvprocss.h"
#include "xscugic.h"
#include "xtime_l.h"
#include <stdio.h>

#define MAX_FPS_ENTRIES 10
#define NUM_FRAMES XPAR_AXIVDMA_0_NUM_FSTORES

typedef struct fps
{
	int next_to_write;
	int size;
	float entries[MAX_FPS_ENTRIES];
} fps_t;

// We have a total of 5 frames, keep start and end for each one.
typedef struct frame_times
{
	XTime tStart[NUM_FRAMES];
	XTime tEnd[NUM_FRAMES];
} frame_times_t;

// Timing globals
static fps_t fps;
static int sw_mode = 0;
static int snapshot_saved = 0;

static u8 back_buffer_frame = 2;
static u8 front_buffer_frame = 3;

// Frame that indicates that the write completed.
static u8 target_frame = 2;

static frame_times_t frame_times;

// In seconds
static float fps_reading = 0;

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
void swap_frame_pointers(XAxiVdma* vdma, u16 dir, u8 a, u8 b)
{
	u32 offset = XAXIVDMA_TX_OFFSET ? dir == XAXIVDMA_WRITE : XAXIVDMA_RX_OFFSET;

#define START_ADDR(index) *((volatile u32*) (vdma->BaseAddr + offset + XAXIVDMA_START_ADDR_OFFSET + (index * 0x4)))
#define VSIZE *((volatile u32*) (vdma->BaseAddr + offset + XAXIVDMA_VSIZE_OFFSET))

	a &= 0x1F;
	b &= 0x1F;

	u32 start_a = START_ADDR(a);
	u32 start_b = START_ADDR(b);

	START_ADDR(a) = start_b;
	START_ADDR(b) = start_a;

	VSIZE = VSIZE;

#undef START_ADDR
#undef VSIZE
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
			u8 frame = get_current_frame_pointer((XAxiVdma*) CallBackRef, XAXIVDMA_READ);

			// If first frame, start only
			if(!frame_times.tStart[frame])
			{
				XTime_GetTime(&frame_times.tStart[frame]);
			}
			else
			{
				XTime_GetTime(&frame_times.tEnd[frame]);

				fps_reading = (frame_times.tEnd[frame] - frame_times.tStart[frame]) / (float)COUNTS_PER_SECOND;

				fps_time_store(&fps, fps_reading);

				sprintf(fps_msg, "Average FPS: %.5f", fps_calculate(&fps));

				xil_printf("%s\n\r", fps_msg);

				// Start the timer back up!
				XTime_GetTime(&frame_times.tStart[frame]);
			}
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
			break;
		}


		default:
		{
			break;
		}
	}

}



// Main function. Initializes the devices and configures VDMA
int main()
{
	// Init frame_times
	for(u8 i = 0; i < NUM_FRAMES; ++i)
	{
		frame_times.tEnd[i] = 0;
		frame_times.tStart[i] = 0;
	}

	// Init FPS
	fps_init(&fps);

	// Camera Init
	camera_config_init(&camera_config);
	fmc_imageon_enable(&camera_config);
	camera_loop(&camera_config);
	while (1)
	{
		// TODO: Add switch from software to hardware mode!
		for (int i = 0; i < 100; i++)
		{
			// XVprocSs_SetPictureBrightness(&proc_ss_RGB_YCrCb_444, (s32)i);
			// XVprocSs_SetPictureContrast(&proc_ss_RGB_YCrCb_444, (s32)i);
			set_contrast(&camera_config, i);
			usleep(100000);
		}
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

// Main (SW) processing loop. Recommended to have an explicit exit condition
 void camera_loop(camera_config_t *config)
 {
 	Xuint32 parkptr;
 	Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;
 	int i, j;

 	xil_printf("Entering main SW processing loop\r\n");

 	// Grab the DMA parkptr, and update it to ensure that when parked, the S2MM side is on frame 0, and the MM2S side on frame 1
 	parkptr = XAxiVdma_ReadReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_PARKPTR_OFFSET // Park Pointer Register
 	);
 	parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
 	parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
 	parkptr |= 0x3;
 	XAxiVdma_WriteReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_PARKPTR_OFFSET,
 		parkptr // Park the S2MM channel on frame 0, and the MM2S channel on frame 1
 	);

 	// Grab the DMA Control Registers, and clear circular park mode.
 	vdma_MM2S_DMACR = XAxiVdma_ReadReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET //
 	);
 	XAxiVdma_WriteReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET,
 		vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK //
 	);
 	vdma_S2MM_DMACR = XAxiVdma_ReadReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET //
 	);
 	XAxiVdma_WriteReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET,
 		vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK //
 	);

 	// Pointers to the S2MM memory frame and M2SS memory frame
 	volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_S2MM_ADDR_OFFSET + XAXIVDMA_START_ADDR_OFFSET //
 	);
 	volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_MM2S_ADDR_OFFSET + XAXIVDMA_START_ADDR_OFFSET + 4 //
 	);

 	xil_printf("Start processing 1000 frames!\r\n");
 	xil_printf("pS2MM_Mem = %X\n\r", pS2MM_Mem);
 	xil_printf("pMM2S_Mem = %X\n\r", pMM2S_Mem);

 	// Run for 1000 frames before going back to HW mode
 	for (j = 0; j < 1000; j++)
 	{
 		for (i = 0; i < 1920 * 1080; i += 2)
 		{
 			uint8_t u, v = 0;
 			uint16_t y = 0;

 			u = (pS2MM_Mem[i] & 0xFF00) >> 8;
 			v = (pS2MM_Mem[i + 1] & 0xFF00) >> 8;
 			y = (pS2MM_Mem[i] & 0xFF) | ((pS2MM_Mem[i + 1] & 0xFF) << 8);

 			// Half luminance
 			y /= 2;

 			// Set from YUV values.
 			pMM2S_Mem[i] = (u << 8) | (y & 0xFF);
 			pMM2S_Mem[i + 1] = (v << 8) | ((y & 0xFF00) >> 8);
 		}
 	}

 	// Grab the DMA Control Registers, and re-enable circular park mode.
 	vdma_MM2S_DMACR = XAxiVdma_ReadReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET //
 	);
 	XAxiVdma_WriteReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET,
 		vdma_MM2S_DMACR | XAXIVDMA_CR_TAIL_EN_MASK //
 	);
 	vdma_S2MM_DMACR = XAxiVdma_ReadReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET //
 	);
 	XAxiVdma_WriteReg(
 		config->vdma_hdmi.BaseAddr,
 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET,
 		vdma_S2MM_DMACR | XAXIVDMA_CR_TAIL_EN_MASK //
 	);

 	xil_printf("Main SW processing loop complete!\r\n");

 	sleep(5);

 	sleep(1);

 	return;
 }
