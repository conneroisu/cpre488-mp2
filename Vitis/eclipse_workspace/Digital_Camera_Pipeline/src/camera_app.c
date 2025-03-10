#include "camera_app.h"
#include "xil_types.h"
#include "xvprocss.h"
#include "xscugic.h"

camera_config_t camera_config;

void write_isr(void* CallBackRef, u32 InterruptTypes)
{
	xil_printf("Got write interrupt!\n\r");
}

void read_isr(void* CallBackRef, u32 InterruptTypes)
{
	xil_printf("Got read interrupt!\n\r");
}

// Interrupts
static XScuGic_Config* gic_config;
XScuGic int_controller;



// Main function. Initializes the devices and configures VDMA
int main()
{
   int status = 0;

	// Get config
   gic_config = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
   if(gic_config == NULL)
   {
	   xil_printf("ERROR: Could not get GIC config!\n\r");
   }
   // Initialize
   status = XScuGic_CfgInitialize(&int_controller, gic_config, gic_config->CpuBaseAddress);
   if(status != XST_SUCCESS)
   {
	   xil_printf("ERROR: Could not initialize GIC!\n\r");
   }

   // Run self test
   status = XScuGic_SelfTest(&int_controller);
   if(status != XST_SUCCESS)
   {
	   xil_printf("ERROR: GIC self test failed!\n\r");
   }

	XScuGic_SetPriorityTriggerType(&int_controller, XPAR_FABRIC_AXIVDMA_0_S2MM_INTROUT_VEC_ID, 0xA0, 0x3);
	XScuGic_SetPriorityTriggerType(&int_controller, XPAR_FABRIC_AXIVDMA_0_MM2S_INTROUT_VEC_ID, 0xA0, 0x3);

   Xil_ExceptionInit();
   Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, &int_controller);
   Xil_ExceptionEnable();

   // Connect ISR
   status = XScuGic_Connect(&int_controller, XPAR_FABRIC_AXIVDMA_0_MM2S_INTROUT_VEC_ID, write_isr, &int_controller);
   if(status != XST_SUCCESS)
   {
	   xil_printf("ERROR: GIC could not connect the VDMA write interrupt!\n\r");
   }

   status = XScuGic_Connect(&int_controller, XPAR_FABRIC_AXIVDMA_0_S2MM_INTROUT_VEC_ID, read_isr, &int_controller);
   if(status != XST_SUCCESS)
   {
	   xil_printf("ERROR: GIC could not connect the VDMA read interrupt!\n\r");
   }


   // Enable interrupt on GIC
   XScuGic_Enable(&int_controller, XPAR_FABRIC_AXIVDMA_0_MM2S_INTROUT_VEC_ID);
   XScuGic_Enable(&int_controller, XPAR_FABRIC_AXIVDMA_0_S2MM_INTROUT_VEC_ID);

	camera_config_init(&camera_config);
	fmc_imageon_enable(&camera_config);
	// camera_loop(&camera_config);
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
