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

void demosaicing(uint8_t bw[ROW_SIZE][COL_SIZE], uint32_t color[ROW_SIZE][COL_SIZE], int rowSize, int colSize) {
    for (int r = 1; r < rowSize - 1; r++) {
        for (int c = 1; c < colSize - 1; c++) {
            bool isBlueRow = (r % 2 != 0);
            bool isGreenPixel = isBlueRow ? (c % 2 == 0) : (c % 2 != 0);
            color[r][c] = 0;

            if (isBlueRow && isGreenPixel) {
                color[r][c] |= ((bw[r + 1][c] + bw[r - 1][c]) / 2) << 16;
                color[r][c] |= ((bw[r][c] + bw[r - 1][c - 1] + bw[r + 1][c + 1] + bw[r + 1][c - 1] + bw[r - 1][c + 1]) / 5) << 8;
                color[r][c] |= ((bw[r][c - 1] + bw[r][c + 1]) / 2);
            } else if (isBlueRow && !isGreenPixel) {
                color[r][c] |= ((bw[r - 1][c - 1] + bw[r + 1][c + 1] + bw[r + 1][c - 1] + bw[r - 1][c + 1]) / 4) << 16;
                color[r][c] |= ((bw[r][c - 1] + bw[r][c + 1] + bw[r - 1][c] + bw[r + 1][c]) / 4) << 8;
                color[r][c] |= bw[r][c];
            } else if (!isBlueRow && isGreenPixel) {
                color[r][c] |= ((bw[r][c + 1] + bw[r][c - 1]) / 2) << 16;
                color[r][c] |= ((bw[r][c] + bw[r - 1][c - 1] + bw[r + 1][c + 1] + bw[r + 1][c - 1] + bw[r - 1][c + 1]) / 5) << 8;
                color[r][c] |= ((bw[r - 1][c] + bw[r + 1][c]) / 2);
            } else {
                color[r][c] |= bw[r][c] << 16;
                color[r][c] |= ((bw[r][c - 1] + bw[r][c + 1] + bw[r - 1][c] + bw[r + 1][c]) / 4) << 8;
                color[r][c] |= ((bw[r - 1][c - 1] + bw[r + 1][c + 1] + bw[r + 1][c - 1] + bw[r - 1][c + 1]) / 4);
            }
        }
    }
}

void rgbToYCbCr444(uint32_t data[ROW_SIZE][COL_SIZE], int rowSize, int colSize) {
    for (int r = 0; r < rowSize; r++) {
        for (int c = 0; c < colSize; c++) {
            uint8_t red = (data[r][c] >> 16) & 0xFF;
            uint8_t green = (data[r][c] >> 8) & 0xFF;
            uint8_t blue = data[r][c] & 0xFF;
            uint8_t Y = (uint8_t)((0.183 * red) + (0.614 * green) + (0.062 * blue) + 16);
            uint8_t Cb = (uint8_t)((-0.101 * red) + (-0.338 * green) + (0.439 * blue) + 128);
            uint8_t Cr = (uint8_t)((0.439 * red) + (-0.399 * green) + (-0.040 * blue) + 128);
            data[r][c] = (Y << 16) | (Cb << 8) | Cr;
        }
    }
}

void YCbCr444to422(uint32_t data[ROW_SIZE][COL_SIZE], int rowSize, int colSize) {
    for (int r = 0; r < rowSize; r++) {
        for (int c = 0; c < colSize; c++) {
            uint8_t Y = (data[r][c] >> 16) & 0xFF;
            uint8_t Cb = (data[r][c] >> 8) & 0xFF;
            uint8_t Cr = data[r][c] & 0xFF;
            data[r][c] = (Cr << 24) | (Y << 16) | (Cb << 8) | Y;
        }
    }
}

// Initialize the camera configuration data structure
void camera_config_init(camera_config_t *config) {
    config->uBaseAddr_IIC_FmcIpmi =  XPAR_FMC_IPMI_ID_EEPROM_0_BASEADDR;   // Device for reading HDMI board IPMI EEPROM information
    config->uBaseAddr_IIC_FmcImageon = XPAR_FMC_IMAGEON_IIC_0_BASEADDR;    // Device for configuring the HDMI board

    // Uncomment when using VITA Camera for Video input
    config->uBaseAddr_VITA_SPI = XPAR_ONSEMI_VITA_SPI_0_S00_AXI_BASEADDR;  // Device for configuring the Camera sensor
    config->uBaseAddr_VITA_CAM = XPAR_ONSEMI_VITA_CAM_0_S00_AXI_BASEADDR;  // Device for receiving Camera sensor data

    config->uDeviceId_VTC_tpg   = XPAR_V_TC_0_DEVICE_ID;                        // Video Timer Controller (VTC) ID
    config->uDeviceId_VDMA_HdmiFrameBuffer = XPAR_AXI_VDMA_0_DEVICE_ID;         // VDMA ID
    config->uBaseAddr_MEM_HdmiFrameBuffer = XPAR_DDR_MEM_BASEADDR + 0x10000000; // VDMA base address for Frame buffers
    config->uNumFrames_HdmiFrameBuffer = XPAR_AXIVDMA_0_NUM_FSTORES;            // Number of VDMA Frame buffers

    xil_printf("Camera configuration structure initialized.\r\n");
    return;
}

void camera_loop(camera_config_t *config) {


    xil_printf("Entering main SW processing loop\r\n");

    Xuint32 parkptr;
    Xuint32 vdma_S2MM_DMACR, vdma_MM2S_DMACR;

    // Setup VDMA memory access
    parkptr = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET);
    parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
    parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
    parkptr |= 0x1;
    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_PARKPTR_OFFSET, parkptr);

    vdma_MM2S_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
    vdma_S2MM_DMACR = XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
    XAxiVdma_WriteReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);

    volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET);
    volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(config->vdma_hdmi.BaseAddr, XAXIVDMA_MM2S_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET+4);

    uint8_t cfa[ROW_SIZE][COL_SIZE];
    uint32_t fullColor[ROW_SIZE][COL_SIZE];

    xil_printf("Start processing frames!\r\n");

    for (int j = 0; j < 1000; j++) {
        // 1. Load CFA data from DMA memory (Bayer pattern)
        for (int r = 0; r < ROW_SIZE; r++) {
            for (int c = 0; c < COL_SIZE; c++) {
                cfa[r][c] = pS2MM_Mem[r * COL_SIZE + c] & 0xFF;
            }
        }

        // 2. Perform demosaicing (Bayer to RGB conversion)
        demosaicing(cfa, fullColor, ROW_SIZE, COL_SIZE);

        // 3. Convert RGB to YCbCr 4:4:4
        rgbToYCbCr444(fullColor, ROW_SIZE, COL_SIZE);

        // 4. Convert YCbCr 4:4:4 to 4:2:2
        YCbCr444to422(fullColor, ROW_SIZE, COL_SIZE);

        // 5. Store the processed frame back to memory for HDMI output
        for (int r = 0; r < ROW_SIZE; r++) {
            for (int c = 0; c < COL_SIZE; c++) {
                pMM2S_Mem[r * COL_SIZE + c] = fullColor[r][c];
            }
        }
    }
    xil_printf("Main SW processing loop complete!\r\n");
    sleep(5);

}
