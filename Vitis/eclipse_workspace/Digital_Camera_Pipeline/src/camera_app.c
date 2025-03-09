#include "camera_app.h"
#include "xil_types.h"
#include "xvprocss.h"
#include "control.h"

camera_config_t camera_config;

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

// Main function. Initializes the devices and configures VDMA
int main()
{

	u32 button_state = 0;
	u32 switch_state = 0;

	camera_config_init(&camera_config);
	fmc_imageon_enable(&camera_config);
	init_interface();
	// camera_loop(&camera_config);
	while (1)
	{
		button_state = get_button_states();
		switch_state = get_switch_states();
		xil_printf("Button state: %x\n\r", button_state);

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
		else if (button_pressed(UP, button_state))
		{
			// Increase the value of the current setting
			switch (settings_state)
			{
			case CONTRAST:
				increase_contrast(&camera_config);
			case BRIGHTNESS:
				increase_brightness(&camera_config);
			case SATURATION:
				increase_saturation(&camera_config);
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
			case BRIGHTNESS:
				decrease_brightness(&camera_config);
			case SATURATION:
				decrease_saturation(&camera_config);
			default:
				break;
			}
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
// void camera_loop(camera_config_t *config)
// {
// 	Xuint32 parkptr;
// 	Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;
// 	int i, j;

// 	xil_printf("Entering main SW processing loop\r\n");

// 	// Grab the DMA parkptr, and update it to ensure that when parked, the S2MM side is on frame 0, and the MM2S side on frame 1
// 	parkptr = XAxiVdma_ReadReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_PARKPTR_OFFSET // Park Pointer Register
// 	);
// 	parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
// 	parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
// 	parkptr |= 0x1;
// 	XAxiVdma_WriteReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_PARKPTR_OFFSET,
// 		parkptr // Park the S2MM channel on frame 0, and the MM2S channel on frame 1
// 	);

// 	// Grab the DMA Control Registers, and clear circular park mode.
// 	vdma_MM2S_DMACR = XAxiVdma_ReadReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET //
// 	);
// 	XAxiVdma_WriteReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET,
// 		vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK //
// 	);
// 	vdma_S2MM_DMACR = XAxiVdma_ReadReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET //
// 	);
// 	XAxiVdma_WriteReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET,
// 		vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK //
// 	);

// 	// Pointers to the S2MM memory frame and M2SS memory frame
// 	volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_S2MM_ADDR_OFFSET + XAXIVDMA_START_ADDR_OFFSET //
// 	);
// 	volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_MM2S_ADDR_OFFSET + XAXIVDMA_START_ADDR_OFFSET + 4 //
// 	);

// 	xil_printf("Start processing 1000 frames!\r\n");
// 	xil_printf("pS2MM_Mem = %X\n\r", pS2MM_Mem);
// 	xil_printf("pMM2S_Mem = %X\n\r", pMM2S_Mem);

// 	// Run for 1000 frames before going back to HW mode
// 	for (j = 0; j < 1000; j++)
// 	{
// 		for (i = 0; i < 1920 * 1080; i += 2)
// 		{
// 			uint8_t u, v = 0;
// 			uint16_t y = 0;

// 			u = (pS2MM_Mem[i] & 0xFF00) >> 8;
// 			v = (pS2MM_Mem[i + 1] & 0xFF00) >> 8;
// 			y = (pS2MM_Mem[i] & 0xFF) | ((pS2MM_Mem[i + 1] & 0xFF) << 8);

// 			// Half luminance
// 			y /= 2;

// 			// Set from YUV values.
// 			pMM2S_Mem[i] = (u << 8) | (y & 0xFF);
// 			pMM2S_Mem[i + 1] = (v << 8) | ((y & 0xFF00) >> 8);
// 		}
// 	}

// 	// Grab the DMA Control Registers, and re-enable circular park mode.
// 	vdma_MM2S_DMACR = XAxiVdma_ReadReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET //
// 	);
// 	XAxiVdma_WriteReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET,
// 		vdma_MM2S_DMACR | XAXIVDMA_CR_TAIL_EN_MASK //
// 	);
// 	vdma_S2MM_DMACR = XAxiVdma_ReadReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET //
// 	);
// 	XAxiVdma_WriteReg(
// 		config->vdma_hdmi.BaseAddr,
// 		XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET,
// 		vdma_S2MM_DMACR | XAXIVDMA_CR_TAIL_EN_MASK //
// 	);

// 	xil_printf("Main SW processing loop complete!\r\n");

// 	sleep(5);

// 	sleep(1);

// goto start;
// 	return;
// }
