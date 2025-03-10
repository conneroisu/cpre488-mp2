#include "camera_app.h"
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

camera_config_t camera_config;
#define ROW_SIZE 1080
#define COL_SIZE 1920


#include "ff.h"
#include "xstatus.h"
#include <stdlib.h>
#include "xil_printf.h"
#include "xil_cache.h"

FATFS  fatfs;

static int SD_Init();
static int SD_Eject();
static int ReadFile(char *FileName, u32 DestinationAddress);
static int WriteFile(char *FileName, u32 size, u32 SourceAddress);


#define inputImageWidth 1920
#define inputImageHeight 1080

char imageBuffer[inputImageWidth*inputImageHeight*3];

static u32 fatfs_mounted=0;

int XST_SUCCESS = 1;

// Main function. Initializes the devices and configures VDMA
int main() {
    xil_printf("Initializing camera configuration...\r\n");
    camera_config_init(&camera_config);
    xil_printf("Camera configuration initialized.\r\n");

    xil_printf("Enabling FMC-IMAGEON...\r\n");
    if (fmc_imageon_enable(&camera_config) != 0) {
        xil_printf("ERROR: fmc_imageon_enable failed. Exiting.\r\n");
        return -1;
    }
    xil_printf("FMC-IMAGEON enabled successfully.\r\n");

    xil_printf("Starting interface...\r\n");
    camera_interface(&camera_config);
    //camera_loop(&camera_config);

    xil_printf("Program completed successfully.\r\n");
    return 0;
}

// Initialize the camera configuration data structure
void camera_config_init(camera_config_t *config) {
    config->uBaseAddr_IIC_FmcIpmi =  XPAR_FMC_IPMI_ID_EEPROM_0_BASEADDR;   // Device for reading HDMI board IPMI EEPROM information
    config->uBaseAddr_IIC_FmcImageon = XPAR_FMC_IMAGEON_IIC_0_BASEADDR;    // Device for configuring the HDMI board

    // Uncomment when using VITA Camera for Video input
    config->uBaseAddr_VITA_SPI = XPAR_ONSEMI_VITA_SPI_0_S00_AXI_BASEADDR;  // Device for configuring the Camera sensor
    config->uBaseAddr_VITA_CAM = XPAR_ONSEMI_VITA_CAM_0_S00_AXI_BASEADDR;  // Device for receiving Camera sensor data


    // Uncomment when using the TPG for Video input
//    config->uBaseAddr_TPG_PatternGenerator = XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR; // TPG Device

    config->uDeviceId_VTC_tpg   = XPAR_V_TC_0_DEVICE_ID;                        // Video Timer Controller (VTC) ID
    config->uDeviceId_VDMA_HdmiFrameBuffer = XPAR_AXI_VDMA_0_DEVICE_ID;         // VDMA ID
    config->uBaseAddr_MEM_HdmiFrameBuffer = XPAR_DDR_MEM_BASEADDR + 0x10000000; // VDMA base address for Frame buffers
    config->uNumFrames_HdmiFrameBuffer = XPAR_AXIVDMA_0_NUM_FSTORES;            // NUmber of VDMA Frame buffers
    return;
}


void imageDisplay(int index){
    char fileName[50];
    sprintf(fileName, "%d.txt", index);

    UINTPTR VDMA = 0x43000000;
//	FIL *fp = NULL;
//    xilsd_fopen(fp, fileName);

//    xilsd_fread(VDMA, 1, 1080*1620*24, fp);
    //Xil_Out16(VDMA, );

}

void writeImage(int index, camera_config_t *config){

}



void camera_interface(camera_config_t *config){

    UINTPTR SWIn = 0x41210000;
    UINTPTR ButtonIn = 0x41200000;
    UINTPTR VDMA = 0x43000000;
    int imageIndex = 0;


	Xil_DCacheDisable();

    int Status;
    Status = SD_Init(&fatfs);
    if (Status != XST_SUCCESS) {
  	 print("file system init failed\n\r");
    }

//	while((Xil_In32(ButtonIn) & 0x00000001) != 0x00000001){//exit button
//
//		Status = SD_Init(&fatfs);
//
//		if((Xil_In32(ButtonIn) & 0x00000002) == 0x00000002){//middle button
//			//stop hardware code
//
//
//			//capture image to sd card
//		}
//		if((Xil_In32(SWIn) & 0x00000001) == 0x00000001){
//			if((Xil_In32(ButtonIn) & 0x00000002) == 0x00000002){//right button
//				if (imageIndex < 31){
//					imageIndex++;
//				}
//
//
//			}
//			else if((Xil_In32(ButtonIn) & 0x00000004) == 0x00000004){//left button
//
//				if(imageIndex > 0){
//					imageIndex--;
//				}
//
//
//			    Status = ReadFile("lenacolor.bin",(u32)VDMA);
//
//			    Xil_Out32(VDMA, (u32)(0x0));
//
//			    if (Status != XST_SUCCESS) {
//			  	 print("file read failed\n\r");
//			    	 return XST_FAILURE;
//			    }
//
//			}
//		}
//
//	}









	 print("file write started\n\r");
   char fileName[50];
   sprintf(fileName, "%d.bin", 0);
 //  int Status;
//   Status = SD_Init(&fatfs);
   print(fileName);




   	Xuint32 parkptr;
   	Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;

   	// Grab the DMA parkptr, and update it to ensure that when parked, the S2MM side is on frame 0, and the MM2S side on frame 1
   	parkptr = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET);
   	parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
   	parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
   	parkptr |= 0x1;
   	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET, parkptr);


   	// Grab the DMA Control Registers, and clear circular park mode.
   	vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
   	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
   	vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
   	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);






	xil_printf("Write File1\r\n");
	volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET);
	volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_MM2S_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET+4);
	xil_printf("Write File2\r\n");

   //volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, 0x43000000);

	xil_printf("Write File\r\n");


   Status = WriteFile(fileName,inputImageWidth*inputImageHeight*24,&pS2MM_Mem);//(inputImageWidth*inputImageHeight*


   print("file write completed\n\r");
   if (Status != XST_SUCCESS) {
 	 print("file write failed\n\r");
   }
   print("file write completed1\n\r");























//    Status = ReadFile("lenacolor.bin",(u32)imageBuffer);
//    if (Status != XST_SUCCESS) {
//  	 print("file read failed\n\r");
//    	 return XST_FAILURE;
//    }
//
//
//
//
//    Status=SD_Eject(&fatfs);
//    if (Status != XST_SUCCESS) {
//  	 print("SD card unmount failed\n\r");
//    	 return XST_FAILURE;
//    }
	xil_printf("done...");


	xil_printf("Camera interface completed successfully.\r\n");
}



static int SD_Init()
{
	FRESULT rc;
	TCHAR *Path = "0:/";
	rc = f_mount(&fatfs,Path,0);
	if (rc) {
		xil_printf(" ERROR : f_mount returned %d\r\n", rc);
		return XST_FAILURE;
	}
	else{
		xil_printf("INIT_Success\r\n");
	}
	return XST_SUCCESS;
}

static int SD_Eject()
{
	FRESULT rc;
	TCHAR *Path = "D:/";
	rc = f_mount(0,Path,1);
	if (rc) {
		xil_printf(" ERROR : f_mount returned %d\r\n", rc);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}



static int ReadFile(char *FileName, u32 DestinationAddress)
{
	FIL fil;
	FRESULT rc;
	UINT br;
	u32 file_size;
	rc = f_open(&fil, FileName, FA_READ);
	if (rc) {
		xil_printf(" ERROR : f_open returned %d\r\n", rc);
		return XST_FAILURE;
	}
	file_size = fil.fsize;
	rc = f_lseek(&fil, 0);
	if (rc) {
		xil_printf(" ERROR : f_lseek returned %d\r\n", rc);
		return XST_FAILURE;
	}
	rc = f_read(&fil, (void*) DestinationAddress, file_size, &br);
	if (rc) {
		xil_printf(" ERROR : f_read returned %d\r\n", rc);
		return XST_FAILURE;
	}
	rc = f_close(&fil);
	if (rc) {
		xil_printf(" ERROR : f_close returned %d\r\n", rc);
		return XST_FAILURE;
	}
	Xil_DCacheFlush();
	return XST_SUCCESS;
}

static int WriteFile(char *fileName, u32 size, u32 SourceAddress){

	xil_printf("Test");
	UINT btw;
	static FIL fil; // File instance
	FRESULT rc; // FRESULT variable
	//rc = f_open(&fil, "0:1.bin", FA_OPEN_ALWAYS | FA_WRITE); //f_open


	/* Register volume work area, initialize device */

	TCHAR *Path = "D:/";
	if (fatfs_mounted == 0) {
		fatfs_mounted = 1;
		rc = f_mount(&fatfs,Path,0);
		if (rc != FR_OK) {
			return XST_FAILURE;
		}
	}

	//rc = f_open(file, filename, FA_READ);
	rc = f_open(&fil, "0:0.bin", FA_OPEN_ALWAYS | FA_WRITE); //f_open

//	rc = xilsd_fopen(fil,"1.bin");

	if (rc) {
		xil_printf(" ERROR : f_open returned %d\r\n", rc);
		return XST_FAILURE;
	}
	rc = f_write(&fil,(const void*)SourceAddress,size,&btw);
	if (rc) {
		xil_printf(" ERROR : f_write returned %d\r\n", rc);
		return XST_FAILURE;
	}
	rc = f_close(&fil);
	if (rc) {
		xil_printf(" ERROR : f_write returned %d\r\n", rc);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}















//void camera_loop(camera_config_t *config) {
//	Xuint32 parkptr;
//	Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;
//
//	xil_printf("Entering main SW processing loop\r\n");
//
//
//	// Grab the DMA parkptr, and update it to ensure that when parked, the S2MM side is on frame 0, and the MM2S side on frame 1
//	parkptr = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET);
//	parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
//	parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
//	parkptr |= 0x1;
//	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET, parkptr);
//
//
//	// Grab the DMA Control Registers, and clear circular park mode.
//	vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
//	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
//	vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
//	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
//
//
//	// Pointers to the S2MM memory frame and M2SS memory frame
//	volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET);
//	volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_MM2S_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET+4);
//
//	uint32_t tempValue_R;
//	uint32_t tempValue_G;
//	uint32_t tempValue_B;
//
//    xil_printf("Start processing frames!\r\n");
//    for (int j = 0; j < 1000; j++) {
//    	for (int i = 0; i < (1080*1920); i+=2) {
//
//    		tempValue_R = 0x00000000;
//			tempValue_G = 0x00000000;
//			tempValue_B = 0x00000000;
//
//    		int r = i / 1920;
//    		int c = i % 1920;
//
//    		/// bggr
//    		// Red pixels
//			if ((r % 2 == 1) && (c % 2 == 1)) {
//				// Average blue neighbors (Diagonal)
//				tempValue_B += ((pS2MM_Mem[(r-1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r-1) * COL_SIZE + (c+1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c+1)])) / 4;
//				// Average green neighbors (Cardinal)
//				tempValue_G += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c]) + (pS2MM_Mem[r * COL_SIZE + (c - 1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 4;
//				// red stays the same
//				tempValue_R += (pS2MM_Mem[r * COL_SIZE + c]);
//
//			// Blue pixels
//			} else if ((r % 2 == 0) && (c % 2 == 0)) {
//				// blue stays the same
//				tempValue_B += (pS2MM_Mem[r * COL_SIZE + c]);
//				// Average green neighbors (Cardinal)
//				tempValue_G += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c]) + (pS2MM_Mem[r * COL_SIZE + (c - 1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 4;
//				// Average red neighbors (Diagonal)
//				tempValue_R += ((pS2MM_Mem[(r-1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r-1) * COL_SIZE + (c+1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c+1)])) / 4;
//			} else {
//					// Green stays same
//					tempValue_G += (pS2MM_Mem[r * COL_SIZE + c]);
//
//					// Blue col: odd, even
//					if ((r % 2 == 0) && (c % 2 == 1)) {
//						// Average red neighbors (left/right)
//						tempValue_R += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c])) / 2;
//						// Average blue neighbors (up/down)
//						tempValue_B += ((pS2MM_Mem[r * COL_SIZE + (c-1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 2;
//					} else {
//						// Average blue neighbors (left/right)
//						tempValue_B += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c])) / 2;
//						// Average red neighbors (up/down)
//						tempValue_R += ((pS2MM_Mem[r * COL_SIZE + (c-1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 2;
//					}
//			}
//
//			uint8_t Y = ((0.183 * tempValue_R) + (0.614 * tempValue_G) + (0.062 * tempValue_B) + 16);
//			uint8_t Cr = ((-0.101 * tempValue_R) + (-0.338 * tempValue_G) + (0.439 * tempValue_B) + 128);
//			uint8_t Cb = ((0.439 * tempValue_R) + (-0.399 * tempValue_G) + (-0.040 * tempValue_B) + 128);
//			// Set from YUV values.
//			pMM2S_Mem[i] = (Cb << 8) | (Y & 0xFF);
//			pMM2S_Mem[i + 1] = (Cr << 8) | ((Y & 0xFF00) >> 8);
//    	}
//    }
//
//	// Grab the DMA Control Registers, and re-enable circular park mode.
//	vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
//	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);
//	vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
//	XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);
//
//
//	xil_printf("Main SW processing loop complete!\r\n");
//
//	sleep(5);
//
//	// Uncomment when using TPG for Video input
//	// fmc_imageon_disable_tpg(config);
//
//	sleep(1);
//
//
//	return;
//
//}
