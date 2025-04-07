#include "camera_app.h"

camera_config_t camera_config;
u32 button_state, switch_state = 0;
XVprocSs proc_ss_RGB_YCrCb_444;
XVprocSs proc_ss_444_to_422;
XVprocSs_Config *Config_ptr;
XVprocSs_Config *Config_ptr_422;

vres_timing_t vres_resolutions[8] = { { "VGA", 480, 10, 2, 33, 0, 640, 16, 96,
		48, 0 },		// VIDEO_RESOLUTION_VGA
		{ "NTSC", 480, 9, 6, 30, 1, 720, 16, 62, 60, 1 },// VIDEO_RESOLUTION_NTSC
		{ "SVGA", 600, 1, 4, 23, 1, 800, 40, 128, 88, 1 },// VIDEO_RESOLUTION_SVGA
		{ "XGA", 768, 3, 6, 29, 0, 1024, 24, 136, 160, 0 },	// VIDEO_RESOLUTION_XGA
		{ "720P", 720, 5, 5, 20, 1, 1280, 110, 40, 220, 1 },// VIDEO_RESOLUTION_720P
		{ "SXGA", 1024, 1, 3, 26, 0, 1280, 48, 184, 200, 0 }, // VIDEO_RESOLUTION_SXGA
		{ "1080P", 1080, 4, 5, 36, 1, 1920, 88, 44, 148, 1 }, // VIDEO_RESOLUTION_1080P
		{ "UXGA", 1200, 1, 3, 46, 0, 1600, 64, 192, 304, 0 }// VIDEO_RESOLUTION_UXGA
};

char *vres_get_name(Xuint32 resolutionId) {
	if (resolutionId < 8) {
		return vres_resolutions[resolutionId].pName;
	} else {
		return "{UNKNOWN}";
	}
}

Xuint32 vres_get_width(Xuint32 resolutionId) {
	return vres_resolutions[resolutionId].HActiveVideo; // horizontal active
}

Xuint32 vres_get_height(Xuint32 resolutionId) {
	return vres_resolutions[resolutionId].VActiveVideo; // vertical active
}

static void SignalSetup(XVtc *pVtc, Xuint32 ResolutionId, XVtc_Signal *SignalCfgPtr) {
	memset((void *) SignalCfgPtr, 0, sizeof(XVtc_Signal));
	SignalCfgPtr->HFrontPorchStart = 1920;
	SignalCfgPtr->HTotal = 2200;
	SignalCfgPtr->HBackPorchStart = 2052;
	SignalCfgPtr->HSyncStart = 2008;
	SignalCfgPtr->HActiveStart = 0;
	SignalCfgPtr->V0FrontPorchStart = 1080;
	SignalCfgPtr->V0Total =1125;
	SignalCfgPtr->V0BackPorchStart =1089;
	SignalCfgPtr->V0SyncStart =1084;
	SignalCfgPtr->V0ChromaStart = 0;
	SignalCfgPtr->V0ActiveStart = 0;

	return;
}

int vgen_init(XVtc *pVtc, u16 VtcDeviceID) {
	int Status;
	XVtc_Config *VtcCfgPtr;
	VtcCfgPtr = XVtc_LookupConfig(VtcDeviceID);
	if (VtcCfgPtr == NULL) {
		return 1;
	}
	Status = XVtc_CfgInitialize(pVtc, VtcCfgPtr, VtcCfgPtr->BaseAddress);
	if (Status != 0L) {
		return 1;
	}
	XVtc_DisableSync(pVtc);
	sleep(1);
	XVtc_EnableGenerator(pVtc);
	return 0;
}
int vgen_config(XVtc *pVtc, int ResolutionId, int bVerbose) {
	XVtc_Signal Signal; /* VTC Signal configuration */
	XVtc_Polarity Polarity; /* Polarity configuration */
	XVtc_HoriOffsets HoriOffsets; /* Horizontal offsets configuration */
	XVtc_SourceSelect SourceSelect; /* Source Selection configuration */
	sleep(5);
	memset((void *) &Polarity, 0, sizeof(Polarity));
	Polarity.ActiveChromaPol = 1;
	Polarity.ActiveVideoPol = 1;
	Polarity.FieldIdPol = 0;
	Polarity.VBlankPol = 1;
	Polarity.VSyncPol = 1;
	Polarity.HBlankPol = 1;
	Polarity.HSyncPol = 1;
	XVtc_SetPolarity(pVtc, &Polarity);
	memset((void *) &HoriOffsets, 0, sizeof(HoriOffsets));
	HoriOffsets.V0BlankHoriEnd = 1920;
	HoriOffsets.V0BlankHoriStart = 1920;
	HoriOffsets.V0SyncHoriEnd = 1920;
	HoriOffsets.V0SyncHoriStart = 1920;
	XVtc_SetGeneratorHoriOffset(pVtc, &HoriOffsets);
	SignalSetup(pVtc, ResolutionId, &Signal);
	XVtc_SetGenerator(pVtc, &Signal);
	memset((void *) &SourceSelect, 0, sizeof(SourceSelect));
	SourceSelect.VChromaSrc = 0;
	SourceSelect.VActiveSrc = 1;
	SourceSelect.VBackPorchSrc = 1;
	SourceSelect.VSyncSrc = 1;
	SourceSelect.VFrontPorchSrc = 1;
	SourceSelect.VTotalSrc = 1;
	SourceSelect.HActiveSrc = 1;
	SourceSelect.HBackPorchSrc = 1;
	SourceSelect.HSyncSrc = 1;
	SourceSelect.HFrontPorchSrc = 1;
	SourceSelect.HTotalSrc = 1;
	XVtc_SetSource(pVtc, &SourceSelect);
	return 0;
}
int vfb_common_init(u16 uDeviceId, XAxiVdma *pAxiVdma) {
	int Status;
	XAxiVdma_Config *Config;
	Config = XAxiVdma_LookupConfig(uDeviceId);
	if (!Config) {
		return 1;
	}
	Status = XAxiVdma_CfgInitialize(pAxiVdma, Config, Config->BaseAddress);
	if (Status != 0L) {
		return 1;
	}
	XAxiVdma_FrameCounter f;
	f.ReadDelayTimerCount = 0;
	f.WriteDelayTimerCount = 0;
	f.ReadFrameCount = 1;
	f.WriteFrameCount = 1;
	Status = XAxiVdma_SetFrameCounter(pAxiVdma, &f);
	if (Status != 0L) {
		return 1;
	}
	return 0;
}

int vfb_rx_init(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pWriteCfg,
		Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr,
		Xuint32 uNumFrames) {
	int Status;
	Status = vfb_rx_setup(pAxiVdma, pWriteCfg, uVideoResolution,
			uStorageResolution, uMemAddr, uNumFrames);
	if (Status != 0L) {
		return 1;
	}
	Status = vfb_rx_start(pAxiVdma);
	if (Status != 0L) {
		return 1;
	}
	XAxiVdma_FsyncSrcSelect(pAxiVdma, 2, 2);
	return 0;
}

int vfb_tx_init(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pReadCfg,
		Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr,
		Xuint32 uNumFrames) {
	int Status;
	u32 uBaseAddr;
	u32 uDMACR;

	/* Setup the read channel */
	Status = vfb_tx_setup(pAxiVdma, pReadCfg, uVideoResolution,
			uStorageResolution, uMemAddr, uNumFrames);
	if (Status != 0L) {
		return 1;
	}

	/* Start the DMA engine to transfer
	 */
	Status = vfb_tx_start(pAxiVdma);
	if (Status != 0L) {
		return 1;
	}

#if 0
	// This function returns prematurely due to (!Channel->GenLock) evaluating to false
	XAxiVdma_GenLockSourceSelect(pAxiVdma, 1, 2);
#else
	uBaseAddr = pAxiVdma->BaseAddr;
	uDMACR = *((volatile int *) (uBaseAddr));
	uDMACR |= 0x00000080;
	*((volatile int *) (uBaseAddr)) = uDMACR;
#endif
	return 0;
}

int vfb_rx_setup(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pWriteCfg,
		Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr,
		Xuint32 uNumFrames) {
	int i;
	int Status;
	pWriteCfg->VertSizeInput = 1080;
	pWriteCfg->HoriSizeInput = 3840;
	pWriteCfg->Stride = 3840;
	pWriteCfg->FrameDelay = 0; /* This example does not test frame delay */
	pWriteCfg->EnableCircularBuf = 1;
	pWriteCfg->EnableSync = 1;
	pWriteCfg->PointNum = 1;
	pWriteCfg->EnableFrameCounter = 0; /* Endless transfers */
	pWriteCfg->FixedFrameStoreAddr = 0; /* We are not doing parking */
	Status = XAxiVdma_DmaConfig(pAxiVdma, 1, pWriteCfg);
	if (Status != 0L) {
		return 1L;
	}
	for (i = 0; i < uNumFrames; i++) {
		pWriteCfg->FrameStoreStartAddr[i] = uMemAddr;

		uMemAddr += 4147200;
	}
	Status = XAxiVdma_DmaSetBufferAddr(pAxiVdma, 1,
			pWriteCfg->FrameStoreStartAddr);
	if (Status != 0L) {
		return 1L;
	}

	return 0L;
}

int vfb_tx_setup(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pReadCfg,
		Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr,
		Xuint32 uNumFrames) {
	int i;
	int Status;
	pReadCfg->VertSizeInput = 1080;
	pReadCfg->HoriSizeInput = 3840;
	pReadCfg->Stride = 3840;
	pReadCfg->FrameDelay = 0;
	pReadCfg->EnableCircularBuf = 1;
	pReadCfg->EnableSync = 1;
	pReadCfg->PointNum = 1;
	pReadCfg->EnableFrameCounter = 0;
	pReadCfg->FixedFrameStoreAddr = 0;
	Status = XAxiVdma_DmaConfig(pAxiVdma, 2, pReadCfg);
	if (Status != 0L) {
		return 1L;
	}
	for (i = 0; i < uNumFrames; i++) {
		pReadCfg->FrameStoreStartAddr[i] = uMemAddr;
		uMemAddr += 4147200;
	}
	// Set the buffer addresses for transfer in the DMA engine
	Status = XAxiVdma_DmaSetBufferAddr(pAxiVdma, 2,
			pReadCfg->FrameStoreStartAddr);
	if (Status != 0L) {
		return 1L;
	}
	return 0L;
}

int vfb_rx_start(XAxiVdma *pAxiVdma) {
	int Status;
	// S2MM Startup
	Status = XAxiVdma_DmaStart(pAxiVdma, 1);
	if (Status != 0L) {
		return 1L;
	}
	return 0L;
}

int vfb_tx_start(XAxiVdma *pAxiVdma) {
	int Status;
	// MM2S Startup
	Status = XAxiVdma_DmaStart(pAxiVdma, 2);
	if (Status != 0L) {
		return 1L;
	}
	return 0L;
}

int vfb_rx_stop(XAxiVdma *pAxiVdma) {
	// S2MM Stop
	XAxiVdma_DmaStop(pAxiVdma, 1);
	return 0L;
}

int vfb_tx_stop(XAxiVdma *pAxiVdma) {
	// MM2S Stop
	XAxiVdma_DmaStop(pAxiVdma, 2);
	return 0L;
}


int vfb_check_errors(XAxiVdma *pAxiVdma, u8 bClearErrors) {
	u32 uBaseAddr = pAxiVdma->BaseAddr;
	Xuint32 inErrors;
	Xuint32 outErrors;
	Xuint32 Errors;
	inErrors = *((volatile int *) (uBaseAddr + 0x00000034)) & 0x0000CFF0;
	outErrors = *((volatile int *) (uBaseAddr + 0x00000004)) & 0x000046F0;
	Errors = (inErrors << 16) | (outErrors);
	if (Errors) {
		// Clear error flags
		*((volatile int *) (uBaseAddr + 0x00000034))=
				0x0000CFF0; // XAXIVDMA_SR_ERR_ALL_MASK;
		*((volatile int *) (uBaseAddr + 0x00000004)) =
				0x000046F0; // XAXIVDMA_SR_ERR_ALL_MASK;
	}

	return Errors;
}

/// @brief fmc_imageon_enable Enable the FMC Imageon camera
/// @param config the camera configuration to enable the camera with.
/// @return 0 if successful, -1 if not
int fmc_imageon_enable(camera_config_t *config) {
	int ret;
	config->bVerbose = 0;
	config->vita_aec = 0;		// off
	config->vita_again = 0;		// 1.0
	config->vita_dgain = 128;	// 1.0
	config->vita_exposure = 90; // 90% of frame period
	ret = fmc_iic_axi_init(&(config->fmc_ipmi_iic), "FMC-IPMI I2C Controller",
			config->uBaseAddr_IIC_FmcIpmi);
	if (!ret) {
		exit(1);
	}
	// FMC Module Validation
	if (fmc_ipmi_detect(&(config->fmc_ipmi_iic), "FMC-IMAGEON", 0)) {
		fmc_ipmi_enable(&(config->fmc_ipmi_iic), 1);
	} else {
		exit(1);
	}

	ret = fmc_iic_axi_init(&(config->fmc_imageon_iic),
			"FMC-IMAGEON I2C Controller", config->uBaseAddr_IIC_FmcImageon);
	if (!ret) {
		exit(1);
	}

	fmc_imageon_init(&(config->fmc_imageon), "FMC-IMAGEON",
			&(config->fmc_imageon_iic));
	fmc_imageon_vclk_init(&(config->fmc_imageon));
	fmc_imageon_vclk_config(&(config->fmc_imageon), 6);

	reset_dcms(config);
	config->hdmio_width = 1920;
	config->hdmio_height = 1080;
	config->hdmio_timing.IsHDMI = 0; // DVI Mode
	config->hdmio_timing.IsEncrypted = 0;
	config->hdmio_timing.IsInterlaced = 0;
	config->hdmio_timing.ColorDepth = 8;
	config->hdmio_timing.HActiveVideo = 1920;
	config->hdmio_timing.HFrontPorch = 88;
	config->hdmio_timing.HSyncWidth = 44;
	config->hdmio_timing.HSyncPolarity = 1;
	config->hdmio_timing.HBackPorch = 148;
	config->hdmio_timing.VActiveVideo = 1080;
	config->hdmio_timing.VFrontPorch = 4;
	config->hdmio_timing.VSyncWidth = 5;
	config->hdmio_timing.VSyncPolarity = 1;
	config->hdmio_timing.VBackPorch = 36;

	config->hdmio_resolution = 6;
	vgen_init(&(config->vtc_tpg), config->uDeviceId_VTC_tpg);
	vgen_config(&(config->vtc_tpg), config->hdmio_resolution, 1);

	// FMC-IMAGEON HDMI Output Initialization
	ret = fmc_imageon_hdmio_init(&(config->fmc_imageon), 1,
			&(config->hdmio_timing), 0);
	if (!ret) {
		exit(0);
	}

	// FMC-IMAGEON VITA Camera Receiver Initialization
	onsemi_vita_init(&(config->onsemi_vita), "VITA-2000",
			config->uBaseAddr_VITA_SPI, config->uBaseAddr_VITA_CAM);
	config->onsemi_vita.uManualTap = 25;
	// Assuming a 75 MHz AXI-Lite SPI bus
	onsemi_vita_spi_config(&(config->onsemi_vita), 7);

	// Enable spread-spectrum clocking (SSC)
	enable_ssc(config);
	Xil_DCacheFlush();

	// Initialize Output Side of AXI VDMA
	vfb_common_init(config->uDeviceId_VDMA_HdmiFrameBuffer,
			&(config->vdma_hdmi)
			);
	vfb_tx_init(&(config->vdma_hdmi),
			&(config->vdmacfg_hdmi_read),
			config->hdmio_resolution,
			config->hdmio_resolution,
			config->uBaseAddr_MEM_HdmiFrameBuffer,
			config->uNumFrames_HdmiFrameBuffer
			);
	sleep(5);
	vfb_rx_init(&(config->vdma_hdmi),
			&(config->vdmacfg_hdmi_write),
			config->hdmio_resolution,
			config->hdmio_resolution,
			config->uBaseAddr_MEM_HdmiFrameBuffer,
			config->uNumFrames_HdmiFrameBuffer
			);

	int vita_enabled_error = 0;
	int vita_enable_attempt = 1;
	do {
		vita_enabled_error = fmc_imageon_enable_vita(config);
		if (vita_enable_attempt > 3) {
			return -1;
		}
	} while (vita_enabled_error != 0);
	fmc_imageon_enable_ipipe(config);
	vfb_check_errors(&(config->vdma_hdmi), 1);
	sleep(1);
	return 0;
}

int fmc_imageon_enable_vita(camera_config_t *config) {
	int ret;
	ret = onsemi_vita_sensor_initialize(&(config->onsemi_vita), 101,0);
	if (ret == 0) {
		return -1;
	}
	onsemi_vita_sensor_initialize(&(config->onsemi_vita), 103,0);
	sleep(1);
	ret = onsemi_vita_sensor_1080P60(&(config->onsemi_vita), 0);
	if (ret == 0) {
		return -1;
	}
	sleep(1);
	onsemi_vita_get_status(&(config->onsemi_vita), &(config->vita_status_t1),
			0);
	sleep(1);
	onsemi_vita_get_status(&(config->onsemi_vita), &(config->vita_status_t2),
			0);

	int vita_width, vita_height, vita_rate;
	vita_width = config->vita_status_t1.cntImagePixels * 4;
	vita_height = config->vita_status_t1.cntImageLines;
	vita_rate = config->vita_status_t2.cntFrames
			- config->vita_status_t1.cntFrames;

	if (config->bVerbose) {
		onsemi_vita_get_status(&(config->onsemi_vita), &(config->vita_status_t2), 0);
	}
	if ((vita_width != 1920) || (vita_height != 1080) || (vita_rate == 0)) {
		return 1;
	}
	return 0;
}
static void csccFwRGBtoYCbCr(s32 RGB2YCC[3][4],
                            XVidC_ColorStd cstdOut,
                            s32 pixPrec,
                            s32 *ClampMin,
                            s32 *ClipMax,
                            XVidC_ColorRange cRangeOut)
{
  s32 scale_factor = 4096;
  s32 bpcScale = (1<<(pixPrec-8));

  switch(cstdOut)
  {
    case XVIDC_BT_601:
        switch(cRangeOut)
 	{
          case XVIDC_CR_0_255:
              RGB2YCC[0][0] = (s32) ( 0.2568*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.5041*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0979*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1482*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.2910*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4393*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4393*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.3678*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0714*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  16*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_235:
              RGB2YCC[0][0] = (s32) ( 0.299*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.587*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.144*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.172*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.339*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.511*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.511*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.428*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.083*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  0*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_240:
              RGB2YCC[0][0] = (s32) ( 0.2921*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.5735*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.1113*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1686*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3310*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4393*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4393*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.4184*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0812*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  0*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          default:
              RGB2YCC[0][0] = (s32) ( 0.2568*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.5041*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0979*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1482*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.2910*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4999*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4999*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.3678*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0714*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  16*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;
        }
        break;

    case XVIDC_BT_709:
        switch(cRangeOut)
        {
          case XVIDC_CR_0_255:
              RGB2YCC[0][0] = (s32) ( 0.1826*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.6142*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0620*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1006*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3386*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4392*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4392*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.3989*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0403*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  16*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_235:
              RGB2YCC[0][0] = (s32) ( 0.212*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.715*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.072*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.117*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.394*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.511*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.51*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.464*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.047*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  0*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_240:
              RGB2YCC[0][0] = (s32) ( 0.2077*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.6988*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0705*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1144*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3582*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4997*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4997*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.4538*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0458*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  0*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          default:
              RGB2YCC[0][0] = (s32) ( 0.1826*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.6142*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0620*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1006*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3386*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4392*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4392*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.3989*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0403*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  16*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;
        }
        break;

    case XVIDC_BT_2020:
        switch(cRangeOut)
        {
          case XVIDC_CR_0_255:
              RGB2YCC[0][0] = (s32) ( 0.2256*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.5823*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0509*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1227*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3166*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4392*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4392*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.4039*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0353*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  16*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_235:
              RGB2YCC[0][0] = (s32) ( 0.2625*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.6775*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0592*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1427*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3684*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.5110*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.5110*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.4699*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0410*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  0*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_240:
              RGB2YCC[0][0] = (s32) ( 0.2566*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.6625*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0579*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1396*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3602*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4997*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4997*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.4595*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0401*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  0*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;

          default:
              RGB2YCC[0][0] = (s32) ( 0.2256*(float)scale_factor);  //K11
              RGB2YCC[0][1] = (s32) ( 0.5823*(float)scale_factor);  //K12
              RGB2YCC[0][2] = (s32) ( 0.0509*(float)scale_factor);  //K13
              RGB2YCC[1][0] = (s32) (-0.1227*(float)scale_factor);  //K21
              RGB2YCC[1][1] = (s32) (-0.3166*(float)scale_factor);  //K22
              RGB2YCC[1][2] = (s32) ( 0.4392*(float)scale_factor);  //K23
              RGB2YCC[2][0] = (s32) ( 0.4392*(float)scale_factor);  //K31
              RGB2YCC[2][1] = (s32) (-0.4039*(float)scale_factor);  //K32
              RGB2YCC[2][2] = (s32) (-0.0353*(float)scale_factor);  //K33
              RGB2YCC[0][3] =  16*bpcScale;                   //R Offset
              RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
              RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
              break;
        }
        break;

    default:
        RGB2YCC[0][0] = (s32) ( 0.2568*(float)scale_factor);  //K11
        RGB2YCC[0][1] = (s32) ( 0.5041*(float)scale_factor);  //K12
        RGB2YCC[0][2] = (s32) ( 0.0979*(float)scale_factor);  //K13
        RGB2YCC[1][0] = (s32) (-0.1482*(float)scale_factor);  //K21
        RGB2YCC[1][1] = (s32) (-0.2910*(float)scale_factor);  //K22
        RGB2YCC[1][2] = (s32) ( 0.4393*(float)scale_factor);  //K23
        RGB2YCC[2][0] = (s32) ( 0.4393*(float)scale_factor);  //K31
        RGB2YCC[2][1] = (s32) (-0.3678*(float)scale_factor);  //K32
        RGB2YCC[2][2] = (s32) (-0.0714*(float)scale_factor);  //K33
        RGB2YCC[0][3] =  16*bpcScale;                   //R Offset
        RGB2YCC[1][3] =  128*bpcScale;                  //G Offset
        RGB2YCC[2][3] =  128*bpcScale;                  //B Offset
        break;
  }

  *ClampMin = 0;
  *ClipMax  = ((1<<pixPrec)-1);
}
static void csccFwMatrixMult(s32 K1[3][4], s32 K2[3][4], s32 Kout[3][4])
{

  s32 A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X;
  s32 scale_factor = (4096);

  A = K1[0][0]; B = K1[0][1]; C = K1[0][2];   J = K1[0][3];
  D = K1[1][0]; E = K1[1][1]; F = K1[1][2];   K = K1[1][3];
  G = K1[2][0]; H = K1[2][1]; I = K1[2][2];   L = K1[2][3];

  M = K2[0][0]; N = K2[0][1]; O = K2[0][2];  V = K2[0][3];
  P = K2[1][0]; Q = K2[1][1]; R = K2[1][2];  W = K2[1][3];
  S = K2[2][0]; T = K2[2][1]; U = K2[2][2];  X = K2[2][3];

  Kout[0][0] =  (M*A + N*D + O*G)/scale_factor;
  Kout[0][1] =  (M*B + N*E + O*H)/scale_factor;
  Kout[0][2] =  (M*C + N*F + O*I)/scale_factor;
  Kout[1][0] =  (P*A + Q*D + R*G)/scale_factor;
  Kout[1][1] =  (P*B + Q*E + R*H)/scale_factor;
  Kout[1][2] =  (P*C + Q*F + R*I)/scale_factor;
  Kout[2][0] =  (S*A + T*D + U*G)/scale_factor;
  Kout[2][1] =  (S*B + T*E + U*H)/scale_factor;
  Kout[2][2] =  (S*C + T*F + U*I)/scale_factor;
  Kout[0][3] = ((M*J + N*K + O*L)/scale_factor) + V;
  Kout[1][3] = ((P*J + Q*K + R*L)/scale_factor) + W;
  Kout[2][3] = ((S*J + T*K + U*L)/scale_factor) + X;
}
static void csccFwYCbCrtoRGB(s32 YCC2RGB[3][4],
                            XVidC_ColorStd cstdIn,
                            s32 pixPrec,
                            s32 *ClampMin,
                            s32 *ClipMax,
                            XVidC_ColorRange cRangeOut)
{
  s32 scale_factor = 4096;
  s32 bpcScale = (1<<(pixPrec-8));

  switch(cstdIn)
  {
    case XVIDC_BT_601:
        switch(cRangeOut)
        {
          case XVIDC_CR_0_255:
              YCC2RGB[0][0] = (s32) ( 1.1644*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.5906*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.1644*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.3918*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.8130*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32)  (1.1644*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 2.0172*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -223*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  136*bpcScale;                  //G Offset
              YCC2RGB[2][3] = (s32) -277*bpcScale;
              break;

          case XVIDC_CR_16_235:
              YCC2RGB[0][0] = (s32) ( 1.0000*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.3669*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.0000*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.3367*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.6986*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32)  (1.0000*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 1.7335*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -175*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  132*bpcScale;                  //G Offset
              YCC2RGB[2][3] = (s32) -222*bpcScale;
       	      break;

          case XVIDC_CR_16_240:
              YCC2RGB[0][0] = (s32) ( 1.0479*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.3979*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.0479*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.3443*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.7145*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32)  (1.0479*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 1.7729*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -179*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  136*bpcScale;                  //G Offset
              YCC2RGB[2][3] = (s32) -227*bpcScale;
	      break;

          default:
              YCC2RGB[0][0] = (s32) ( 1.1644*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.5906*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.1644*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.3918*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.8130*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32)  (1.1644*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 2.0172*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -223*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  136*bpcScale;                  //G Offset
              YCC2RGB[2][3] = (s32) -277*bpcScale;                  //B Offset
              break;
	}
        break;

    case XVIDC_BT_709:
        switch(cRangeOut)
        {
          case XVIDC_CR_0_255:
              YCC2RGB[0][0] = (s32) ( 1.1644*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.7927*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.1644*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.2132*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.5329*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.1644*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 2.1124*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -248*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  77*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -289*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_235:
              YCC2RGB[0][0] = (s32) ( 1.0000*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.5406*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.0000*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.1832*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.4579*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.0000*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 1.8153*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -197*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  82*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -232*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_240:
              YCC2RGB[0][0] = (s32) ( 1.0233*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.5756*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.0233*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.1873*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.4683*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.0233*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 1.8566*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -202*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  84*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -238*bpcScale;                  //B Offset
              break;

          default:
              YCC2RGB[0][0] = (s32) ( 1.1644*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.7927*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.1644*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.2132*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.5329*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.1644*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 2.1124*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -248*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  77*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -289*bpcScale;                  //B Offset
              break;
        }
        break;

    case XVIDC_BT_2020:
        switch(cRangeOut)
 	{
          case XVIDC_CR_0_255:
              YCC2RGB[0][0] = (s32) ( 1.1644*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.6787*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.1644*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.1873*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.6504*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.1644*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 2.1418*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -234*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  89*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -293*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_235:
              YCC2RGB[0][0] = (s32) ( 1.0000*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.4426*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.0000*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.1609*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.5589*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.0000*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 1.8406*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -185*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  92*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -236*bpcScale;                  //B Offset
              break;

          case XVIDC_CR_16_240:
              YCC2RGB[0][0] = (s32) ( 1.0233*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.4754*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.0233*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.1646*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.5716*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.0233*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 1.8824*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -189*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  94*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -241*bpcScale;                  //B Offset
              break;

          default:
              YCC2RGB[0][0] = (s32) ( 1.1644*(float)scale_factor);  //K11
              YCC2RGB[0][1] = (s32)  0;                             //K12
              YCC2RGB[0][2] = (s32) ( 1.6787*(float)scale_factor);  //K13
              YCC2RGB[1][0] = (s32) ( 1.1644*(float)scale_factor);  //K21
              YCC2RGB[1][1] = (s32) (-0.1873*(float)scale_factor);  //K22
              YCC2RGB[1][2] = (s32) (-0.6504*(float)scale_factor);  //K23
              YCC2RGB[2][0] = (s32) ( 1.1644*(float)scale_factor);  //K31
              YCC2RGB[2][1] = (s32) ( 2.1418*(float)scale_factor);  //K32
              YCC2RGB[2][2] = (s32)  0;                             //K33
              YCC2RGB[0][3] = (s32) -234*bpcScale;                  //R Offset
              YCC2RGB[1][3] = (s32)  89*bpcScale;                   //G Offset
              YCC2RGB[2][3] = (s32) -293*bpcScale;                  //B Offset
              break;
        }
        break;

    default: //use 601 numbers
        YCC2RGB[0][0] = (s32) ( 1.1644*(float)scale_factor);  //K11
        YCC2RGB[0][1] = (s32)  0;                             //K12
        YCC2RGB[0][2] = (s32) ( 1.5906*(float)scale_factor);  //K13
        YCC2RGB[1][0] = (s32) ( 1.1644*(float)scale_factor);  //K21
        YCC2RGB[1][1] = (s32) (-0.3918*(float)scale_factor);  //K22
        YCC2RGB[1][2] = (s32) (-0.8130*(float)scale_factor);  //K23
        YCC2RGB[2][0] = (s32)  (1.1644*(float)scale_factor);  //K31
        YCC2RGB[2][1] = (s32) ( 2.0172*(float)scale_factor);  //K32
        YCC2RGB[2][2] = (s32)  0;                             //K33
        YCC2RGB[0][3] = (s32) -223*bpcScale;                  //R Offset
        YCC2RGB[1][3] = (s32)  136*bpcScale;                  //G Offset
        YCC2RGB[2][3] = (s32) -277*bpcScale;                  //B Offset
        break;
  }

  *ClampMin = 0;
  *ClipMax  = ((1<<pixPrec)-1);
}
/*****************************************************************************/
/**
* This function provides the write interface for FW register bank
*
* @param  CscPtr is a pointer to layer 2 of csc core instance
* @param  offset is register offset
* @param  val is data to write
*
* @return None
*
******************************************************************************/
static __inline void csccFw_RegW(XV_Csc_l2 *CscPtr, u32 offset, s32 val)
{
  CscPtr->regMap[offset] = val;
}
static void csccFwSetCoefficients(XV_Csc_l2 *CscPtr,
                                 s32 K[3][4],
                                 s32 ClampMin,
                                 s32 ClipMax)
{
  csccFw_RegW(CscPtr, CSC_FW_REG_K11_2,K[0][0]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K12_2,K[0][1]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K13_2,K[0][2]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K21_2,K[1][0]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K22_2,K[1][1]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K23_2,K[1][2]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K31_2,K[2][0]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K32_2,K[2][1]);
  csccFw_RegW(CscPtr, CSC_FW_REG_K33_2,K[2][2]);
  csccFw_RegW(CscPtr, CSC_FW_REG_ROffset_2,K[0][3]);
  csccFw_RegW(CscPtr, CSC_FW_REG_GOffset_2,K[1][3]);
  csccFw_RegW(CscPtr, CSC_FW_REG_BOffset_2,K[2][3]);
  csccFw_RegW(CscPtr, CSC_FW_REG_ClampMin_2,ClampMin);
  csccFw_RegW(CscPtr, CSC_FW_REG_ClipMax_2,ClipMax);
}
static void csccFwComputeCoeff(XV_Csc_l2 *CscPtr,
                              s32 K2[3][4])
{
  u32 x,y;
  s32 K3[3][4], M1[3][4], M2[3][4], Kout[3][4];;
  s32 ClampMin = 0;
  s32 ClipMax  = ((1<<CscPtr->ColorDepth)-1);

  //RGB in and RGB out
  if((CscPtr->ColorFormatIn == XVIDC_CSF_RGB) &&
     (CscPtr->ColorFormatOut == XVIDC_CSF_RGB) )
  {
    for (x=0; x<3; x++)  for (y=0; y<4; y++)
      Kout[x][y] = K2[x][y];
  }
  //RGB in and 444/422/420 out
  else if ((CscPtr->ColorFormatIn == XVIDC_CSF_RGB) &&
          (CscPtr->ColorFormatOut != XVIDC_CSF_RGB) )
  {
    csccFwRGBtoYCbCr(M2, CscPtr->StandardOut, CscPtr->ColorDepth, &ClampMin, &ClipMax, CscPtr->OutputRange);
    csccFwMatrixMult(K2, M2, Kout);
  }
  //444/422/420 in and RGB out
  else if ((CscPtr->ColorFormatIn != XVIDC_CSF_RGB) &&
          (CscPtr->ColorFormatOut == XVIDC_CSF_RGB) )
  {
    csccFwYCbCrtoRGB(M1, CscPtr->StandardIn, CscPtr->ColorDepth, &ClampMin, &ClipMax, CscPtr->OutputRange);
    csccFwMatrixMult(M1, K2, Kout);
  }
  //444/422/420 in and 444/422/420 out
  else
  {
    csccFwYCbCrtoRGB(M1, CscPtr->StandardIn, CscPtr->ColorDepth, &ClampMin, &ClipMax, CscPtr->OutputRange);
    csccFwMatrixMult(M1, K2, K3);
    csccFwRGBtoYCbCr(M2, CscPtr->StandardOut, CscPtr->ColorDepth, &ClampMin, &ClipMax, CscPtr->OutputRange);
    csccFwMatrixMult(K3, M2, Kout);
  }
  csccFwSetCoefficients(CscPtr, Kout, ClampMin, ClipMax);
}
typedef enum
{
  UPDT_REG_FULL_FRAME = 0,
  UPD_REG_DEMO_WIN
}XV_CSCC_REG_UPDT_WIN;
static __inline s32 csccFw_RegR(XV_Csc_l2 *CscPtr, u32 offset)
{
  return CscPtr->regMap[offset];
}
static void cscUpdateIPReg(XV_Csc_l2 *CscPtr,
                           XV_CSCC_REG_UPDT_WIN win)
{
  u8 x,y;
  s32 K[3][4];
  u32 clampMin, clipMax;
  XV_csc *pCsc = &CscPtr->Csc;

  switch(win)
  {
    case UPDT_REG_FULL_FRAME:
        for(x=0; x<3; ++x)
        {
          for(y=0; y<3; ++y)
          {
            K[x][y] = csccFw_RegR(CscPtr, (x*3+y)+CSC_FW_REG_K11);
          }
        }
        K[0][3] = csccFw_RegR(CscPtr, CSC_FW_REG_ROffset);
        K[1][3] = csccFw_RegR(CscPtr, CSC_FW_REG_GOffset);
        K[2][3] = csccFw_RegR(CscPtr, CSC_FW_REG_BOffset);
        clampMin = csccFw_RegR(CscPtr, CSC_FW_REG_ClampMin);
        clipMax  = csccFw_RegR(CscPtr, CSC_FW_REG_ClipMax);

        XV_csc_Set_HwReg_K11(pCsc, K[0][0]);
        XV_csc_Set_HwReg_K12(pCsc, K[0][1]);
        XV_csc_Set_HwReg_K13(pCsc, K[0][2]);
        XV_csc_Set_HwReg_K21(pCsc, K[1][0]);
        XV_csc_Set_HwReg_K22(pCsc, K[1][1]);
        XV_csc_Set_HwReg_K23(pCsc, K[1][2]);
        XV_csc_Set_HwReg_K31(pCsc, K[2][0]);
        XV_csc_Set_HwReg_K32(pCsc, K[2][1]);
        XV_csc_Set_HwReg_K33(pCsc, K[2][2]);
        XV_csc_Set_HwReg_ROffset_V(pCsc,  K[0][3]);
        XV_csc_Set_HwReg_GOffset_V(pCsc,  K[1][3]);
        XV_csc_Set_HwReg_BOffset_V(pCsc,  K[2][3]);
        XV_csc_Set_HwReg_ClampMin_V(pCsc, clampMin);
        XV_csc_Set_HwReg_ClipMax_V(pCsc,  clipMax);
        break;

    case UPD_REG_DEMO_WIN:
        for(x=0; x<3; ++x)
        {
          for(y=0; y<3; ++y)
          {
            K[x][y] = csccFw_RegR(CscPtr, (x*3+y)+CSC_FW_REG_K11_2);
          }
        }
        K[0][3] = csccFw_RegR(CscPtr, CSC_FW_REG_ROffset_2);
        K[1][3] = csccFw_RegR(CscPtr, CSC_FW_REG_GOffset_2);
        K[2][3] = csccFw_RegR(CscPtr, CSC_FW_REG_BOffset_2);
        clampMin = csccFw_RegR(CscPtr, CSC_FW_REG_ClampMin_2);
        clipMax  = csccFw_RegR(CscPtr, CSC_FW_REG_ClipMax_2);
        if (XV_CscIsDemoWindowEnabled(CscPtr)) {
          XV_csc_Set_HwReg_K11_2(pCsc, K[0][0]);
          XV_csc_Set_HwReg_K12_2(pCsc, K[0][1]);
          XV_csc_Set_HwReg_K13_2(pCsc, K[0][2]);
          XV_csc_Set_HwReg_K21_2(pCsc, K[1][0]);
          XV_csc_Set_HwReg_K22_2(pCsc, K[1][1]);
          XV_csc_Set_HwReg_K23_2(pCsc, K[1][2]);
          XV_csc_Set_HwReg_K31_2(pCsc, K[2][0]);
          XV_csc_Set_HwReg_K32_2(pCsc, K[2][1]);
          XV_csc_Set_HwReg_K33_2(pCsc, K[2][2]);
          XV_csc_Set_HwReg_ROffset_2_V(pCsc,  K[0][3]);
          XV_csc_Set_HwReg_GOffset_2_V(pCsc,  K[1][3]);
          XV_csc_Set_HwReg_BOffset_2_V(pCsc,  K[2][3]);
          XV_csc_Set_HwReg_ClampMin_2_V(pCsc, clampMin);
          XV_csc_Set_HwReg_ClipMax_2_V(pCsc,  clipMax);
        } else {
          XV_csc_Set_HwReg_K11(pCsc, K[0][0]);
          XV_csc_Set_HwReg_K12(pCsc, K[0][1]);
          XV_csc_Set_HwReg_K13(pCsc, K[0][2]);
          XV_csc_Set_HwReg_K21(pCsc, K[1][0]);
          XV_csc_Set_HwReg_K22(pCsc, K[1][1]);
          XV_csc_Set_HwReg_K23(pCsc, K[1][2]);
          XV_csc_Set_HwReg_K31(pCsc, K[2][0]);
          XV_csc_Set_HwReg_K32(pCsc, K[2][1]);
          XV_csc_Set_HwReg_K33(pCsc, K[2][2]);
          XV_csc_Set_HwReg_ROffset_V(pCsc,  K[0][3]);
          XV_csc_Set_HwReg_GOffset_V(pCsc,  K[1][3]);
          XV_csc_Set_HwReg_BOffset_V(pCsc,  K[2][3]);
          XV_csc_Set_HwReg_ClampMin_V(pCsc, clampMin);
          XV_csc_Set_HwReg_ClipMax_V(pCsc,  clipMax);
        }
        break;

    default:
        break;
  }
}



int XVC_CscSetColorspace(XV_Csc_l2 *InstancePtr,
                         XVidC_ColorFormat cfmtIn,
                         XVidC_ColorFormat cfmtOut,
                         XVidC_ColorStd cstdIn,
                         XVidC_ColorStd cstdOut,
                         XVidC_ColorRange cRangeOut
                        )
{
  s32 K[3][4], K1[3][4], K2[3][4];
  s32 ClampMin = 0;
  s32 ClipMax;
  s32 scale_factor;
  XV_csc *pCsc = &InstancePtr->Csc;

  ClipMax  = ((1<<InstancePtr->ColorDepth)-1);
  scale_factor = 4096;

  //initialize to identity matrix
  K[0][0] = scale_factor;
  K[0][1] = 0;
  K[0][2] = 0;
  K[1][0] = 0;
  K[1][1] = scale_factor;
  K[1][2] = 0;
  K[2][0] = 0;
  K[2][1] = 0;
  K[2][2] = scale_factor;
  K[0][3] = 0;
  K[1][3] = 0;
  K[2][3] = 0;

  XV_csc_Set_HwReg_InVideoFormat(pCsc,  cfmtIn);
  XV_csc_Set_HwReg_OutVideoFormat(pCsc, cfmtOut);
  //RGB in and 444/422/420 out
  if ((cfmtIn == 0) && (cfmtOut != 0) )
  {
    csccFwRGBtoYCbCr(K, cstdOut, InstancePtr->ColorDepth, &ClampMin, &ClipMax, cRangeOut);
  }
  //444/422/420 in and RGB out
  else if ((cfmtIn != 0) && (cfmtOut == 0))
  {
    csccFwYCbCrtoRGB(K, cstdIn, InstancePtr->ColorDepth, &ClampMin, &ClipMax, cRangeOut);
  }
  //444/422/420 in and 444/422/420 out
  else
  {
    //color standard change from input to output
    if (cstdIn != cstdOut)
    {
      csccFwYCbCrtoRGB(K1, cstdIn,  InstancePtr->ColorDepth, &ClampMin, &ClipMax, cRangeOut);
      csccFwRGBtoYCbCr(K2, cstdOut, InstancePtr->ColorDepth, &ClampMin, &ClipMax, cRangeOut);
      csccFwMatrixMult(K1, K2, K);
    }
  }
  InstancePtr->ColorFormatIn  = cfmtIn;
  InstancePtr->ColorFormatOut = cfmtOut;
  InstancePtr->StandardIn     = cstdIn;
  InstancePtr->StandardOut    = cstdOut;
  InstancePtr->OutputRange    = cRangeOut;

  csccFw_RegW(InstancePtr, 4,K[0][0]);
  csccFw_RegW(InstancePtr, 5,K[0][1]);
  csccFw_RegW(InstancePtr, 6,K[0][2]);
  csccFw_RegW(InstancePtr, 7,K[1][0]);
  csccFw_RegW(InstancePtr, 8,K[1][1]);
  csccFw_RegW(InstancePtr, 9,K[1][2]);
  csccFw_RegW(InstancePtr, 10,K[2][0]);
  csccFw_RegW(InstancePtr, 11,K[2][1]);
  csccFw_RegW(InstancePtr, 12,K[2][2]);
  csccFw_RegW(InstancePtr, 13,K[0][3]);
  csccFw_RegW(InstancePtr, 14,K[1][3]);
  csccFw_RegW(InstancePtr, 15,K[2][3]);
  csccFw_RegW(InstancePtr, 16,ClampMin);
  csccFw_RegW(InstancePtr, 17,ClipMax);

  //compute coeff for Demo window
  csccFwComputeCoeff(InstancePtr, InstancePtr->K_active);

  //write IP Registers
  cscUpdateIPReg(InstancePtr, 0);
  cscUpdateIPReg(InstancePtr, 1);

  return XST_SUCCESS;
}
int fmc_imageon_enable_ipipe(camera_config_t *config) {
	int result;
	Config_ptr_422 = XVprocSs_LookupConfig(1);

	result = XVprocSs_CfgInitialize(&proc_ss_444_to_422, Config_ptr_422,
			0x43C10000);
	if (result != 0L) {
		return -1;
	}

	// Set Up HW REG Width for SS1
	Xil_Out16((0x43C10010), (u16) (1920));
	// Set Up HW REG Height for SS1
	Xil_Out16((0x43C10018), (u16) (1080));
	// Set HW REG Input Video Format for SS1
	Xil_Out8(0x43C10020, (u8) (0x01));
	// Set HW REG Output Video Format for SS1
	Xil_Out8((0x43C10028), (u8) (0x02));
	Xil_Out32((0x43C10000), (u32) (0x81));

	XVprocSs_Start(&proc_ss_444_to_422);

	Config_ptr = XVprocSs_LookupConfig(0);

	result = XVprocSs_CfgInitialize(&proc_ss_RGB_YCrCb_444, Config_ptr,
			0x43C00000);
	if (result != 0L) {
		return -1;
	}

	result = XVC_CscSetColorspace(proc_ss_RGB_YCrCb_444.CscPtr, XVIDC_CSF_RGB, 1,
			1, 1, 2);
	if (result != 0L) {
		return -1;
	}

	result = XVprocSs_SetSubsystemConfig(&proc_ss_RGB_YCrCb_444);
	if (result != 0L) {
		return -1;
	}
	result = XVC_CscSetColorspace(proc_ss_RGB_YCrCb_444.CscPtr, XVIDC_CSF_RGB, 1,
			1, 1, 2);
	if (result != 0L) {
		return -1;
	}
	XVprocSs_Start(&proc_ss_RGB_YCrCb_444);
	Xil_Out32((0x43C40010), (u32) (1920));
	Xil_Out32((0x43C40018), (u32) (1080));
	Xil_Out32((0x43C40028), (u32) (0));
	Xil_Out32((0x43C40000), (u32) (0x81));

	return 0;
}

void enable_ssc(camera_config_t *config) {
	int i;
	Xuint8 iic_cdce913_ssc_on[3][2] = { { 0x10, 0x6D }, // SSC = 011 (0.75%)
			{ 0x11, 0xB6 }, //
			{ 0x12, 0xDB }  //
	};

	fmc_imageon_iic_mux(&(config->fmc_imageon), 3);

	for (i = 0; i < 3; i++) {
		config->fmc_imageon.pIIC->fpIicWrite(config->fmc_imageon.pIIC, 0x65,
				(0x80 | iic_cdce913_ssc_on[i][0]), &(iic_cdce913_ssc_on[i][1]),
				1 //
				);
	}
	return;
}

// Toggles the reset on the DCM core (clock generator)
void reset_dcms(camera_config_t *config) {

	Xuint32 value;

	// Force reset high
	config->fmc_ipmi_iic.fpGpoRead(&(config->fmc_ipmi_iic), &value);
	value = value | 0x00000004; // Force bit 2 to 1
	config->fmc_ipmi_iic.fpGpoWrite(&(config->fmc_ipmi_iic), value);
	usleep(200000);

	// Force reset low
	config->fmc_ipmi_iic.fpGpoRead(&(config->fmc_ipmi_iic), &value);
	value = value & ~0x00000004; // Force bit 2 to 0
	config->fmc_ipmi_iic.fpGpoWrite(&(config->fmc_ipmi_iic), value);
	usleep(500000);
}

camera_config_t camera_config;

// Swaps the memory addresses associated with the frame pointers
void set_start_address(XAxiVdma *vdma, u16 dir, u8 frame, u16 *addr) {
	u32 start_addr_offset = dir == 1 ? 0xAC : 0x5C;
	u32 vsize_offset = dir == 1 ? 0xA0 : 0x50;
	frame &= 0x1F;

#define START_ADDR *((volatile u32 *)(vdma->BaseAddr + start_addr_offset + (frame * 0x4)))
#define VSIZE *((volatile u32 *)(vdma->BaseAddr + vsize_offset))
	START_ADDR = (u32) addr;
	VSIZE = VSIZE;
#undef START_ADDR
#undef VSIZE
}

u16 *get_start_address(XAxiVdma *vdma, u16 dir, u8 frame) {
	u32 start_addr_offset = dir == 1 ? 0xAC : 0x5C;
	frame &= 0x1F;

#define START_ADDR *((volatile u32 *)(vdma->BaseAddr + start_addr_offset + (frame * 0x4)))

	return (u16 *) START_ADDR;

#undef START_ADDR
}

u8 get_current_frame_pointer(XAxiVdma *vdma, u16 dir) {
	u8 result = 0;
	u32 mask, shift_amt = 0;
	if (dir == 2) {
		mask = 0x1F0000;
		shift_amt = 16;
	} else if (dir == 1) {
		mask = 0x1F00000;
		shift_amt = 24;
	}
	result = (*((volatile u32 *) (vdma->BaseAddr + 0x00000028)) & mask)
			>> shift_amt;
	return result;
}

void set_park_frame(XAxiVdma *vdma, u8 frame, u16 dir) {
#define PARK *((volatile u32 *)(vdma->BaseAddr + 0x00000028))

	u32 mask, shift_amt = 0;

	if (dir == 2) {
		mask = ~0x1F;
	} else if (dir == 1) {
		mask = ~0x1F0;
		shift_amt = 8;
	}

	PARK = (PARK & mask) | ((u32) (frame & 0x1F) << shift_amt);

#undef PARK
}

// Initialize the camera configuration data structure
void camera_config_init(camera_config_t *config) {
	config->uBaseAddr_IIC_FmcIpmi = 0x41610000;	// Device for reading HDMI board IPMI EEPROM information
	config->uBaseAddr_IIC_FmcImageon = 0x41600000; // Device for configuring the HDMI board
	config->uBaseAddr_VITA_SPI = 0x43C30000; // Device for configuring the Camera sensor
	config->uBaseAddr_VITA_CAM = 0x43C20000; // Device for receiving Camera sensor data
	config->uDeviceId_VTC_tpg = 0;// Video Timer Controller (VTC) ID
	config->uDeviceId_VDMA_HdmiFrameBuffer = 0x0U;		// VDMA ID
	config->uBaseAddr_MEM_HdmiFrameBuffer = 0x10000000; // VDMA base address for Frame buffers
	config->uNumFrames_HdmiFrameBuffer = 0x5U;	// NUmber of VDMA Frame buffers
	return;
}

// Main function. Initializes the devices and configures VDMA
int main() {
	init_platform();

	camera_config_init(&camera_config);
	fmc_imageon_enable(&camera_config);

	set_park_frame(&(camera_config.vdma_hdmi), 1, 1);
	set_park_frame(&(camera_config.vdma_hdmi), 1, 2);

	// Enable park.
#define READ_CR *((volatile u32 *)(camera_config.vdma_hdmi.BaseAddr + 0x00000030))
#define WRITE_CR *((volatile u32 *)(camera_config.vdma_hdmi.BaseAddr))

	READ_CR &= ~0x2;
	WRITE_CR &= ~0x2;

#undef READ_CR
#undef WRITE_CR

	while (1) {
	}

	return 0;
}
