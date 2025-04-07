#include "camera_app.h"

camera_config_t camera_config;

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

int fmc_imageon_enable_ipipe(camera_config_t *config) {
	// Set Up HW REG Width for SS1
	Xil_Out16((0x43C10010), (u16) (1920));
	// Set Up HW REG Height for SS1
	Xil_Out16((0x43C10018), (u16) (1080));
	// Set HW REG Input Video Format for SS1
	Xil_Out8(0x43C10020, (u8) (0x01));
	// Set HW REG Output Video Format for SS1
	Xil_Out8((0x43C10028), (u8) (0x02));

	*(volatile u32 *)0x43C10000 = 0x81;
	*(volatile u32 *)0x43C00010 = 0x0;
	*(volatile u32 *)0x43C00018 = 0x1;
	*(volatile u32 *)0x43C00050 = 0x2EB;
	*(volatile u32 *)0x43C00058 = 0x9D3;
	*(volatile u32 *)0x43C00060 = 0xFD;
	*(volatile u32 *)0x43C00068 = 0xFFFFFE64;
	*(volatile u32 *)0x43C00070 = 0xFFFFFA96;
	*(volatile u32 *)0x43C00078 = 0x706;
	*(volatile u32 *)0x43C00080 = 0x706;
	*(volatile u32 *)0x43C00088 = 0xFFFFF99F;
	*(volatile u32 *)0x43C00090 = 0xFFFFFF5B;
	*(volatile u32 *)0x43C00098 = 0x0;
	*(volatile u32 *)0x43C000A0 = 0x0;
	*(volatile u32 *)0x43C000A8 = 0x0;
	*(volatile u32 *)0x43C000B0 = 0x0;
	*(volatile u32 *)0x43C000B8 = 0x0;
	*(volatile u32 *)0x43C00050 = 0x0;
	*(volatile u32 *)0x43C00058 = 0x0;
	*(volatile u32 *)0x43C00060 = 0x0;
	*(volatile u32 *)0x43C00068 = 0x0;
	*(volatile u32 *)0x43C00070 = 0x0;
	*(volatile u32 *)0x43C00078 = 0x0;
	*(volatile u32 *)0x43C00080 = 0x0;
	*(volatile u32 *)0x43C00088 = 0x0;
	*(volatile u32 *)0x43C00090 = 0x0;
	*(volatile u32 *)0x43C00098 = 0x0;
	*(volatile u32 *)0x43C000A0 = 0x0;
	*(volatile u32 *)0x43C000A8 = 0x0;
	*(volatile u32 *)0x43C000B0 = 0x0;
	*(volatile u32 *)0x43C000B8 = 0x0;
	*(volatile u32 *)0x43C00010 = 0x0;
	*(volatile u32 *)0x43C00018 = 0x0;
	*(volatile u32 *)0x43C00050 = 0x1000;
	*(volatile u32 *)0x43C00058 = 0x0;
	*(volatile u32 *)0x43C00060 = 0x0;
	*(volatile u32 *)0x43C00068 = 0x0;
	*(volatile u32 *)0x43C00070 = 0x1000;
	*(volatile u32 *)0x43C00078 = 0x0;
	*(volatile u32 *)0x43C00080 = 0x0;
	*(volatile u32 *)0x43C00088 = 0x0;
	*(volatile u32 *)0x43C00090 = 0x1000;
	*(volatile u32 *)0x43C00098 = 0x0;
	*(volatile u32 *)0x43C000A0 = 0x0;
	*(volatile u32 *)0x43C000A8 = 0x0;
	*(volatile u32 *)0x43C000B0 = 0x0;
	*(volatile u32 *)0x43C000B8 = 0xFF;
	*(volatile u32 *)0x43C00050 = 0x1000;
	*(volatile u32 *)0x43C00058 = 0x0;
	*(volatile u32 *)0x43C00060 = 0x0;
	*(volatile u32 *)0x43C00068 = 0x0;
	*(volatile u32 *)0x43C00070 = 0x1000;
	*(volatile u32 *)0x43C00078 = 0x0;
	*(volatile u32 *)0x43C00080 = 0x0;
	*(volatile u32 *)0x43C00088 = 0x0;
	*(volatile u32 *)0x43C00090 = 0x1000;
	*(volatile u32 *)0x43C00098 = 0x0;
	*(volatile u32 *)0x43C000A0 = 0x0;
	*(volatile u32 *)0x43C000A8 = 0x0;
	*(volatile u32 *)0x43C000B0 = 0x0;
	*(volatile u32 *)0x43C000B8 = 0xFF;
	*(volatile u32 *)0x43C00020 = 0x780;
	*(volatile u32 *)0x43C00028 = 0x438;
	*(volatile u32 *)0x43C00000 = 0x80;
	*(volatile u32 *)0x43C00000 = 0x81;
	*(volatile u32 *)0x43C00010 = 0x0;
	*(volatile u32 *)0x43C00018 = 0x1;
	*(volatile u32 *)0x43C00050 = 0x2EB;
	*(volatile u32 *)0x43C00058 = 0x9D3;
	*(volatile u32 *)0x43C00060 = 0xFD;
	*(volatile u32 *)0x43C00068 = 0xFFFFFE64;
	*(volatile u32 *)0x43C00070 = 0xFFFFFA96;
	*(volatile u32 *)0x43C00078 = 0x706;
	*(volatile u32 *)0x43C00080 = 0x706;
	*(volatile u32 *)0x43C00088 = 0xFFFFF99F;
	*(volatile u32 *)0x43C00090 = 0xFFFFFF5B;
	*(volatile u32 *)0x43C00098 = 0x10;
	*(volatile u32 *)0x43C000A0 = 0x80;
	*(volatile u32 *)0x43C000A8 = 0x80;
	*(volatile u32 *)0x43C000B0 = 0x0;
	*(volatile u32 *)0x43C000B8 = 0xFF;
	*(volatile u32 *)0x43C00050 = 0x2EB;
	*(volatile u32 *)0x43C00058 = 0x9D3;
	*(volatile u32 *)0x43C00060 = 0xFD;
	*(volatile u32 *)0x43C00068 = 0xFFFFFE64;
	*(volatile u32 *)0x43C00070 = 0xFFFFFA96;
	*(volatile u32 *)0x43C00078 = 0x706;
	*(volatile u32 *)0x43C00080 = 0x706;
	*(volatile u32 *)0x43C00088 = 0xFFFFF99F;
	*(volatile u32 *)0x43C00090 = 0xFFFFFF5B;
	*(volatile u32 *)0x43C00098 = 0x10;
	*(volatile u32 *)0x43C000A0 = 0x80;
	*(volatile u32 *)0x43C000A8 = 0x80;
	*(volatile u32 *)0x43C000B0 = 0x0;
	*(volatile u32 *)0x43C000B8 = 0xFF;
	*(volatile u32 *)0x43C40010 = 0x780;
	*(volatile u32 *)0x43C40018 = 0x438;
	*(volatile u32 *)0x43C40028 = 0x0;
	*(volatile u32 *)0x43C40000 = 0x81;

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
int camera_main() {
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
