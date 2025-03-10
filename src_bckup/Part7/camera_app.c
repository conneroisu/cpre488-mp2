#include "camera_app.h"
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

camera_config_t camera_config;
#define ROW_SIZE 1080
#define COL_SIZE 1920

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

    xil_printf("Starting camera loop...\r\n");
    camera_loop(&camera_config);

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

void camera_loop(camera_config_t *config) {
	Xuint32 parkptr;
	Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;

	xil_printf("Entering main SW processing loop\r\n");


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

	// Pointers to the S2MM memory frame and M2SS memory frame
	volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET);
	volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_MM2S_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET+4);


	int imageIndex = 0;
	int playMode = 0;
	int StoreimageIndex = 0;
	int NumImages = 32;
	uint32_t tempValue_R;
	uint32_t tempValue_G;
	uint32_t tempValue_B;
	int count = 0;

	UINTPTR SWIn = 0x41210000;
	UINTPTR ButtonIn = 0x41200000;

    xil_printf("Start processing frames!\r\n");
    Xuint16 *rawBayer = (Xuint16 *)malloc(1920 * 1080 * sizeof(Xuint16)*NumImages);
    while((Xil_In32(SWIn) & 0x00000002) != 0x00000002){
    	xil_printf("Loop!\r\n");
    	if ((Xil_In32(ButtonIn) & 0x00000010) == 0x00000010) {

    			if(StoreimageIndex < NumImages-1){

        	    	xil_printf("Capture");

        	    	*pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET);
        	    	*pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_MM2S_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET+4);


//    	    	    Xuint32 parkptr;
//    	    	    Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;
//    	    	    // Grab the DMA parkptr, and update it to ensure that when parked, the S2MM side is on frame 0, and the MM2S side on frame 1
//    	    	    parkptr = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET);
//    	    	    parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
//    	    	    parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
//    	    	    parkptr |= 0x1;
//    	    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET, parkptr);
//    	    	    // Grab the DMA Control Registers, and clear circular park mode.
//    	    	    vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET);
//    	    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
//    	    	    vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET);
//    	    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
//


    	    	    sleep(1);


        	    	for (int i = 0; i < (1080*1920); i+=2) {

//        	    		tempValue_R = 0x00000000;
//        				tempValue_G = 0x00000000;
//        				tempValue_B = 0x00000000;
//
//        	    		int r = i / 1920;
//        	    		int c = i % 1920;
//
//        	    		/// bggr
//        	    		// Red pixels
//        				if ((r % 2 == 1) && (c % 2 == 1)) {
//        					// Average blue neighbors (Diagonal)
//        					tempValue_B += ((pS2MM_Mem[(r-1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r-1) * COL_SIZE + (c+1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c+1)])) / 4;
//        					// Average green neighbors (Cardinal)
//        					tempValue_G += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c]) + (pS2MM_Mem[r * COL_SIZE + (c - 1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 4;
//        					// red stays the same
//        					tempValue_R += (pS2MM_Mem[r * COL_SIZE + c]);
//
//        				// Blue pixels
//        				} else if ((r % 2 == 0) && (c % 2 == 0)) {
//        					// blue stays the same
//        					tempValue_B += (pS2MM_Mem[r * COL_SIZE + c]);
//        					// Average green neighbors (Cardinal)
//        					tempValue_G += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c]) + (pS2MM_Mem[r * COL_SIZE + (c - 1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 4;
//        					// Average red neighbors (Diagonal)
//        					tempValue_R += ((pS2MM_Mem[(r-1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r-1) * COL_SIZE + (c+1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c-1)]) + (pS2MM_Mem[(r+1) * COL_SIZE + (c+1)])) / 4;
//        				} else {
//        						// Green stays same
//        						tempValue_G += (pS2MM_Mem[r * COL_SIZE + c]);
//
//        						// Blue col: odd, even
//        						if ((r % 2 == 0) && (c % 2 == 1)) {
//        							// Average red neighbors (left/right)
//        							tempValue_R += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c])) / 2;
//        							// Average blue neighbors (up/down)
//        							tempValue_B += ((pS2MM_Mem[r * COL_SIZE + (c-1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 2;
//        						} else {
//        							// Average blue neighbors (left/right)
//        							tempValue_B += ((pS2MM_Mem[(r-1) * COL_SIZE + c]) + (pS2MM_Mem[(r+1) * COL_SIZE + c])) / 2;
//        							// Average red neighbors (up/down)
//        							tempValue_R += ((pS2MM_Mem[r * COL_SIZE + (c-1)]) + (pS2MM_Mem[r * COL_SIZE + (c+1)])) / 2;
//        						}
//        				}
//
//        				uint8_t Y = ((0.183 * tempValue_R) + (0.614 * tempValue_G) + (0.062 * tempValue_B) + 16);
//        				uint8_t Cr = ((-0.101 * tempValue_R) + (-0.338 * tempValue_G) + (0.439 * tempValue_B) + 128);
//        				uint8_t Cb = ((0.439 * tempValue_R) + (-0.399 * tempValue_G) + (-0.040 * tempValue_B) + 128);
//        				// Set from YUV values.



//        	    		rawBayer[i + 1920 * 1080 * StoreimageIndex] = pS2MM_Mem[i];
//        				rawBayer[i + 1920 * 1080 * StoreimageIndex] = pS2MM_Mem[i+1];
        	    	}

    	    		rawBayer[1920 * 1080 * StoreimageIndex] = pS2MM_Mem;
    				//rawBayer[1920 * 1080 * StoreimageIndex] = pS2MM_Mem;
        	    	StoreimageIndex++;

//            	    // Grab the DMA Control Registers, and re-enable circular park mode.
//            	    vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET);
//            	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);
//            	    vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET);
//            	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);
//


            	    sleep(2);








        	    }
    			else{
    				xil_printf("No more space for images");
    			}
    			xil_printf("Done");
			}

    	if((Xil_In32(SWIn) & 0x00000001)){







    	    Xuint32 parkptr;
    	    Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;
    	    // Grab the DMA parkptr, and update it to ensure that when parked, the S2MM side is on frame 0, and the MM2S side on frame 1
    	    parkptr = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET);
    	    parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
    	    parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
    	    parkptr |= 0x1;
    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET, parkptr);
    	    // Grab the DMA Control Registers, and clear circular park mode.
    	    vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET);
    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
    	    vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET);
    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);














    		if (!playMode){
        		xil_printf("Play mode");
    		}
            if ((Xil_In32(ButtonIn) & 0x00000001) == 0x00000001) {
            	xil_printf("add");

//                for (int i = 0; i < (1080*1920); i+=2) {
//            		pMM2S_Mem[i] = 0x0000;
//            		pMM2S_Mem[i + 1] = 0x0000;
//
//                }
//                //sleep(.5);
//
//                for (int i = 0; i < (1080*1920); i+=2) {
//            		pMM2S_Mem[i] = 0x0000;
//            		pMM2S_Mem[i + 1] = 0x0000;
//
//                }
                //sleep(.5);
                count = 0;
                while(count < 5){
            		pMM2S_Mem = &rawBayer[1920 * 1080 * imageIndex];
                	for (int i = 0; i < (1080*1920); i+=2) {
                		pMM2S_Mem[i] = rawBayer[i + 1920 * 1080 * imageIndex];
                		pMM2S_Mem[i + 1] = rawBayer[i + 1 + 1920 * 1080 * imageIndex];
                	}
                	count ++;
                }

        		//sleep(5);
                if(imageIndex< StoreimageIndex){
                	imageIndex++;
                }
            }
            if ((Xil_In32(ButtonIn) & 0x00000002) == 0x00000002) {
            	xil_printf("go back");

                for (int i = 0; i < (1080*1920); i+=2) {
            		pMM2S_Mem[i] = 0x0000;
            		pMM2S_Mem[i + 1] = 0x0000;

                }

                sleep(.5);

                for (int i = 0; i < (1080*1920); i+=2) {
            		pMM2S_Mem[i] = 0x0000;
            		pMM2S_Mem[i + 1] = 0x0000;

                }
                sleep(.5);

                count = 0;
                while(count < 5){
                	pMM2S_Mem = &rawBayer[1920 * 1080 * imageIndex];
//                	for (int i = 0; i < (1080*1920); i+=2) {
//                		pMM2S_Mem[i] = rawBayer[i + 1920 * 1080 * imageIndex];
//                		pMM2S_Mem[i + 1] = rawBayer[i + 1 + 1920 * 1080 * imageIndex];
//                	}
                	count ++;
                }
        		sleep(2);
                if(imageIndex > 0){
                	imageIndex--;
                }


            }

            playMode = 1;

    	}
    	else{
    		playMode = 0;
    		//enable_hardware();





    	    Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;
    	    // Grab the DMA Control Registers, and re-enable circular park mode.
    	    vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET);
    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);
    	    vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET);
    	    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);


    	}




    }


	xil_printf("Main SW processing loop complete!\r\n");

	sleep(5);

	// Uncomment when using TPG for Video input
	// fmc_imageon_disable_tpg(config);

	sleep(1);


	return;

}



