#include "camera_app.h"


camera_config_t camera_config;
u32 button_state, switch_state = 0;
XVprocSs proc_ss_RGB_YCrCb_444;
XVprocSs proc_ss_444_to_422;
XVprocSs_Config *Config_ptr;
XVprocSs_Config *Config_ptr_422;

#define VITA_ENABLE_ATTEMPT_LIMIT 3
#define INCR_DECR_VALUE 1

vres_timing_t vres_resolutions[NUM_VIDEO_RESOLUTIONS] = {
// name     vav,  vfp,  vsw,  vbp,  vsp,  hav,  hfp,  hsw,  hbp,  hsp
		{ "VGA", 480, 10, 2, 33, 0, 640, 16, 96, 48, 0 }, // VIDEO_RESOLUTION_VGA
		{ "NTSC", 480, 9, 6, 30, 1, 720, 16, 62, 60, 1 }, // VIDEO_RESOLUTION_NTSC
		{ "SVGA", 600, 1, 4, 23, 1, 800, 40, 128, 88, 1 }, // VIDEO_RESOLUTION_SVGA
		{ "XGA", 768, 3, 6, 29, 0, 1024, 24, 136, 160, 0 }, // VIDEO_RESOLUTION_XGA
		{ "720P", 720, 5, 5, 20, 1, 1280, 110, 40, 220, 1 }, // VIDEO_RESOLUTION_720P
		{ "SXGA", 1024, 1, 3, 26, 0, 1280, 48, 184, 200, 0 }, // VIDEO_RESOLUTION_SXGA
		{ "1080P", 1080, 4, 5, 36, 1, 1920, 88, 44, 148, 1 }, // VIDEO_RESOLUTION_1080P
		{ "UXGA", 1200, 1, 3, 46, 0, 1600, 64, 192, 304, 0 } // VIDEO_RESOLUTION_UXGA
};

char *vres_get_name(Xuint32 resolutionId) {
	if (resolutionId < NUM_VIDEO_RESOLUTIONS) {
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

Xuint32 vres_get_timing(Xuint32 ResolutionId, vres_timing_t *pTiming) {
	pTiming->pName = vres_resolutions[ResolutionId].pName;
	pTiming->HActiveVideo = vres_resolutions[ResolutionId].HActiveVideo;
	pTiming->HFrontPorch = vres_resolutions[ResolutionId].HFrontPorch;
	pTiming->HSyncWidth = vres_resolutions[ResolutionId].HSyncWidth;
	pTiming->HBackPorch = vres_resolutions[ResolutionId].HBackPorch;
	pTiming->HSyncPolarity = vres_resolutions[ResolutionId].HSyncPolarity;
	pTiming->VActiveVideo = vres_resolutions[ResolutionId].VActiveVideo;
	pTiming->VFrontPorch = vres_resolutions[ResolutionId].VFrontPorch;
	pTiming->VSyncWidth = vres_resolutions[ResolutionId].VSyncWidth;
	pTiming->VBackPorch = vres_resolutions[ResolutionId].VBackPorch;
	pTiming->VSyncPolarity = vres_resolutions[ResolutionId].VSyncPolarity;

	return 0;
}

Xint32 vres_detect(Xuint32 width, Xuint32 height) {
	Xint32 i;
	Xint32 resolution = -1;

	for (i = 0; i < NUM_VIDEO_RESOLUTIONS; i++) {
		if (width == vres_get_width(i) && height == vres_get_height(i)) {
			xil_printf("Detected Video Resolution = %s\r\n", vres_get_name(i));
			resolution = i;
			break;
		}
	}
	return resolution;
}

/**
 *
 * This function sets up the Video Timing Controller Signal configuration.
 *
 * @param	None.
 *
 * @return	None.
 *
 * @note		None.
 *
 **/
static void SignalSetup(XVtc *pVtc, Xuint32 ResolutionId,
		XVtc_Signal *SignalCfgPtr) {
	vres_timing_t VideoTiming;

	int HFrontPorch;
	int HSyncWidth;
	int HBackPorch;
	int VFrontPorch;
	int VSyncWidth;
	int VBackPorch;
	int LineWidth;
	int FrameHeight;

	vres_get_timing(ResolutionId, &VideoTiming);

	HFrontPorch = VideoTiming.HFrontPorch;
	HSyncWidth = VideoTiming.HSyncWidth;
	HBackPorch = VideoTiming.HBackPorch;
	VFrontPorch = VideoTiming.VFrontPorch;
	VSyncWidth = VideoTiming.VSyncWidth;
	VBackPorch = VideoTiming.VBackPorch;
	LineWidth = VideoTiming.HActiveVideo;
	FrameHeight = VideoTiming.VActiveVideo;

	/* Clear the VTC Signal config structure */

	memset((void *) SignalCfgPtr, 0, sizeof(XVtc_Signal));

	/* Populate the VTC Signal config structure. Ignore the Field 1 */

	SignalCfgPtr->HFrontPorchStart = LineWidth;
	SignalCfgPtr->HTotal = HFrontPorch + HSyncWidth + HBackPorch + LineWidth;
	SignalCfgPtr->HBackPorchStart = LineWidth + HFrontPorch + HSyncWidth;
	SignalCfgPtr->HSyncStart = LineWidth + HFrontPorch;
	SignalCfgPtr->HActiveStart = 0;

	SignalCfgPtr->V0FrontPorchStart = FrameHeight;
	SignalCfgPtr->V0Total = VFrontPorch + VSyncWidth + VBackPorch + FrameHeight;
	SignalCfgPtr->V0BackPorchStart = FrameHeight + VFrontPorch + VSyncWidth;
	SignalCfgPtr->V0SyncStart = FrameHeight + VFrontPorch;
	SignalCfgPtr->V0ChromaStart = 0;
	SignalCfgPtr->V0ActiveStart = 0;

	return;
}


int vgen_init(XVtc *pVtc, u16 VtcDeviceID) {
	int Status;
	XVtc_Config *VtcCfgPtr;
	/* Look for the device configuration info for the Video Timing
	 * Controller.
	 */
	VtcCfgPtr = XVtc_LookupConfig(VtcDeviceID);
	if (VtcCfgPtr == NULL) {
		return 1;
	}

	/* Initialize the Video Timing Controller instance */

	Status = XVtc_CfgInitialize(pVtc, VtcCfgPtr, VtcCfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return 1;
	}

	XVtc_DisableSync(pVtc);

	sleep(1);

	/* Enable the generator module */

	// phjones update to 1 arg.  XVtc_Enable(pVtc, XVTC_EN_GENERATOR);
	XVtc_EnableGenerator(pVtc);

	//	XVtc_DisableSync(pVtc);

	return 0;
}

/**
 *
 * vgen_config
 * - configures the generator to generate missing syncs
 *
 * @param	pVtc is a pointer to an initialized VTC instance
 *           ResolutionId identified a video resolution
 *           vVerbose = 0 no verbose, 1 minimal verbose, 2 most verbose
 *
 * @return	0 if all tests pass, 1 otherwise.
 *
 * @note		None.
 *
 **/
int vgen_config(XVtc *pVtc, int ResolutionId, int bVerbose) {
	int Status;

	XVtc_Signal Signal; /* VTC Signal configuration */
	XVtc_Polarity Polarity; /* Polarity configuration */
	XVtc_HoriOffsets HoriOffsets; /* Horizontal offsets configuration */
	XVtc_SourceSelect SourceSelect; /* Source Selection configuration */

	sleep(5);

	if (bVerbose) {
		xil_printf("\tVideo Resolution = %s\n\r", vres_get_name(ResolutionId));
	}

	/* Set up Polarity of all outputs */

	memset((void *) &Polarity, 0, sizeof(Polarity));
	Polarity.ActiveChromaPol = 1;
	Polarity.ActiveVideoPol = 1;
	Polarity.FieldIdPol = 0;
	Polarity.VBlankPol = 1;
	Polarity.VSyncPol = 1;
	Polarity.HBlankPol = 1;
	Polarity.HSyncPol = 1;

	XVtc_SetPolarity(pVtc, &Polarity);

	/* Set up Generator */

	memset((void *) &HoriOffsets, 0, sizeof(HoriOffsets));
	HoriOffsets.V0BlankHoriEnd = 1920;
	HoriOffsets.V0BlankHoriStart = 1920;
	HoriOffsets.V0SyncHoriEnd = 1920;
	HoriOffsets.V0SyncHoriStart = 1920;

	XVtc_SetGeneratorHoriOffset(pVtc, &HoriOffsets);

	SignalSetup(pVtc, ResolutionId, &Signal);

	if (bVerbose == 2) {
		xil_printf("\tVTC Generator Configuration\n\r");
		xil_printf("\t\tHorizontal Timing:\n\r");
		xil_printf("\t\t\tHFrontPorchStart %d\r\n", Signal.HFrontPorchStart);
		xil_printf("\t\t\tHSyncStart %d\r\n", Signal.HSyncStart);
		xil_printf("\t\t\tHBackPorchStart %d\r\n", Signal.HBackPorchStart);
		xil_printf("\t\t\tHActiveStart = %d\r\n", Signal.HActiveStart);
		xil_printf("\t\t\tHTotal = %d\r\n", Signal.HTotal);
		xil_printf("\t\tVertical Timing:\n\r");
		xil_printf("\t\t\tV0FrontPorchStart %d\r\n", Signal.V0FrontPorchStart);
		xil_printf("\t\t\tV0SyncStart %d\r\n", Signal.V0SyncStart);
		xil_printf("\t\t\tV0BackPorchStart %d\r\n", Signal.V0BackPorchStart);
		xil_printf("\t\t\tV0ActiveStart %d\r\n", Signal.V0ActiveStart);
		xil_printf("\t\t\tV0Total %d\r\n", Signal.V0Total);
	}

	XVtc_SetGenerator(pVtc, &Signal);

	/* Set up source select */

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

	/* Return success */

	return 0;
}

int vfb_common_init(u16 uDeviceId, XAxiVdma *pAxiVdma) {
	int Status;
	XAxiVdma_Config *Config;

	Config = XAxiVdma_LookupConfig(uDeviceId);
	if (!Config) {
		xil_printf("No video DMA found for ID %d\n\r", uDeviceId);
		return 1;
	}

	/* Initialize DMA engine */
	Status = XAxiVdma_CfgInitialize(pAxiVdma, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\n\r", Status);
		return 1;
	}

	int status = 0;
	// Set frame counter
	XAxiVdma_FrameCounter f;
	f.ReadDelayTimerCount = 0;
	f.WriteDelayTimerCount = 0;
	f.ReadFrameCount = 1;
	f.WriteFrameCount = 1;
	status = XAxiVdma_SetFrameCounter(pAxiVdma, &f);
	if (status != XST_SUCCESS) {
		xil_printf("ERROR: Could not set VDMA frame counter!\n\r");
	}

	return 0;
}

int vfb_rx_init(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pWriteCfg,
		Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr,
		Xuint32 uNumFrames) {
	int Status;

	/* Setup the write channel */
	Status = vfb_rx_setup(pAxiVdma, pWriteCfg, uVideoResolution,
			uStorageResolution, uMemAddr, uNumFrames);
	if (Status != XST_SUCCESS) {
		xdbg_printf(XDBG_DEBUG_ERROR,
				"Write channel setup failed %d\r\n", Status);

		return 1;
	}

	/* Start the DMA engine to transfer
	 */
	Status = vfb_rx_start(pAxiVdma);
	if (Status != XST_SUCCESS) {
		return 1;
	}

	XAxiVdma_FsyncSrcSelect(pAxiVdma, XAXIVDMA_S2MM_TUSER_FSYNC, XAXIVDMA_READ);
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
	if (Status != XST_SUCCESS) {
		xdbg_printf(XDBG_DEBUG_ERROR,
				"Read channel setup failed %d\n\r", Status);

		return 1;
	}

	/* Start the DMA engine to transfer
	 */
	Status = vfb_tx_start(pAxiVdma);
	if (Status != XST_SUCCESS) {
		return 1;
	}

#if 0
	// This function returns prematurely due to (!Channel->GenLock) evaluating to false
	XAxiVdma_GenLockSourceSelect(pAxiVdma, XAXIVDMA_INTERNAL_GENLOCK, XAXIVDMA_READ);
#else
	uBaseAddr = pAxiVdma->BaseAddr;
	uDMACR = *((volatile int *) (uBaseAddr + XAXIVDMA_TX_OFFSET
			+ XAXIVDMA_CR_OFFSET));
	uDMACR |= 0x00000080;
	*((volatile int *) (uBaseAddr + XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET)) =
			uDMACR;
#endif
	return 0;
}

int vfb_rx_setup(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pWriteCfg,
		Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr,
		Xuint32 uNumFrames) {
	int i;
	u32 Addr;
	int Status;

	Xuint32 video_width, video_height;
	Xuint32 storage_width, storage_height, storage_stride, storage_size,
			storage_offset;

	// Get Video dimensions
	video_height = vres_get_height(uVideoResolution);      // in lines
	video_width = vres_get_width(uVideoResolution) << 1; // in bytes

	// Get Storage dimensions
	storage_height = vres_get_height(uStorageResolution);      // in lines
	storage_width = vres_get_width(uStorageResolution) << 1; // in bytes
	storage_stride = storage_width;
	storage_size = storage_width * storage_height;
	storage_offset = ((storage_height - video_height) >> 1) * storage_width
			+ ((storage_width - video_width) >> 1);

	pWriteCfg->VertSizeInput = video_height;
	pWriteCfg->HoriSizeInput = video_width;
	pWriteCfg->Stride = storage_stride;

	pWriteCfg->FrameDelay = 0; /* This example does not test frame delay */

	pWriteCfg->EnableCircularBuf = 1;
	pWriteCfg->EnableSync = 1;

	pWriteCfg->PointNum = 1;
	pWriteCfg->EnableFrameCounter = 0; /* Endless transfers */

	pWriteCfg->FixedFrameStoreAddr = 0; /* We are not doing parking */

	Status = XAxiVdma_DmaConfig(pAxiVdma, XAXIVDMA_WRITE, pWriteCfg);
	if (Status != XST_SUCCESS) {
		xdbg_printf(XDBG_DEBUG_ERROR,
				"Write channel config failed %d\r\n", Status);

		return XST_FAILURE;
	}

	/* Initialize buffer addresses
	 *
	 * Use physical addresses
	 */
	Addr = uMemAddr + storage_offset;
	for (i = 0; i < uNumFrames; i++) {
		pWriteCfg->FrameStoreStartAddr[i] = Addr;

		Addr += storage_size;
	}

	/* Set the buffer addresses for transfer in the DMA engine
	 */
	Status = XAxiVdma_DmaSetBufferAddr(pAxiVdma, XAXIVDMA_WRITE,
			pWriteCfg->FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
		xdbg_printf(XDBG_DEBUG_ERROR,
				"Write channel set buffer address failed %d\r\n", Status);

		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int vfb_tx_setup(XAxiVdma *pAxiVdma, XAxiVdma_DmaSetup *pReadCfg,
		Xuint32 uVideoResolution, Xuint32 uStorageResolution, Xuint32 uMemAddr,
		Xuint32 uNumFrames) {
	int i;
	u32 Addr;
	int Status;

	Xuint32 video_width, video_height;
	Xuint32 storage_width, storage_height, storage_stride, storage_size,
			storage_offset;

	// Get Video dimensions
	video_height = vres_get_height(uVideoResolution);      // in lines
	video_width = vres_get_width(uVideoResolution) << 1; // in bytes

	// Get Storage dimensions
	storage_height = vres_get_height(uStorageResolution);      // in lines
	storage_width = vres_get_width(uStorageResolution) << 1; // in bytes
	storage_stride = storage_width;
	storage_size = storage_width * storage_height;
	storage_offset = ((storage_height - video_height) >> 1) * storage_width
			+ ((storage_width - video_width) >> 1);

	pReadCfg->VertSizeInput = video_height;
	pReadCfg->HoriSizeInput = video_width;
	pReadCfg->Stride = storage_stride;

	pReadCfg->FrameDelay = 0; /* This example does not test frame delay */

	pReadCfg->EnableCircularBuf = 1;
	pReadCfg->EnableSync = 1;

	pReadCfg->PointNum = 1;
	pReadCfg->EnableFrameCounter = 0; /* Endless transfers */

	pReadCfg->FixedFrameStoreAddr = 0; /* We are not doing parking */

	Status = XAxiVdma_DmaConfig(pAxiVdma, XAXIVDMA_READ, pReadCfg);
	if (Status != XST_SUCCESS) {
		xdbg_printf(XDBG_DEBUG_ERROR,
				"Read channel config failed %d\n\r", Status);

		return XST_FAILURE;
	}

	/* Initialize buffer addresses
	 *
	 * These addresses are physical addresses
	 */
	Addr = uMemAddr + storage_offset;
	for (i = 0; i < uNumFrames; i++) {
		pReadCfg->FrameStoreStartAddr[i] = Addr;

		Addr += storage_size;
	}

	/* Set the buffer addresses for transfer in the DMA engine
	 * The buffer addresses are physical addresses
	 */
	Status = XAxiVdma_DmaSetBufferAddr(pAxiVdma, XAXIVDMA_READ,
			pReadCfg->FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
		xdbg_printf(XDBG_DEBUG_ERROR,
				"Read channel set buffer address failed %d\n\r", Status);

		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int vfb_rx_start(XAxiVdma *pAxiVdma) {
	int Status;

	// S2MM Startup
	Status = XAxiVdma_DmaStart(pAxiVdma, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS) {
		xil_printf("Start Write transfer failed %d\r\n", Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int vfb_tx_start(XAxiVdma *pAxiVdma) {
	int Status;

	// MM2S Startup
	Status = XAxiVdma_DmaStart(pAxiVdma, XAXIVDMA_READ);
	if (Status != XST_SUCCESS) {
		xil_printf("Start read transfer failed %d\n\r", Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int vfb_rx_stop(XAxiVdma *pAxiVdma) {
	// S2MM Stop
	XAxiVdma_DmaStop(pAxiVdma, XAXIVDMA_WRITE);

	return XST_SUCCESS;
}

int vfb_tx_stop(XAxiVdma *pAxiVdma) {
	// MM2S Stop
	XAxiVdma_DmaStop(pAxiVdma, XAXIVDMA_READ);

	return XST_SUCCESS;
}

int vfb_dump_registers(XAxiVdma *pAxiVdma) {
	u32 uBaseAddr = pAxiVdma->BaseAddr;

	// Partial Register Dump
	xil_printf("AXI_VDMA - Partial Register Dump (uBaseAddr = 0x%08X):\n\r",
			uBaseAddr);
	xil_printf("\t PARKPTR          = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_PARKPTR_OFFSET)));
	xil_printf("\t ----------------\n\r");
	xil_printf("\t S2MM_DMACR       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_RX_OFFSET
					+ XAXIVDMA_CR_OFFSET)));
	xil_printf("\t S2MM_DMASR       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_RX_OFFSET
					+ XAXIVDMA_SR_OFFSET)));
	xil_printf("\t S2MM_STRD_FRMDLY = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_S2MM_ADDR_OFFSET
					+ XAXIVDMA_STRD_FRMDLY_OFFSET)));
	xil_printf("\t S2MM_START_ADDR0 = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_S2MM_ADDR_OFFSET
					+ XAXIVDMA_START_ADDR_OFFSET + 0)));
	xil_printf("\t S2MM_START_ADDR1 = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_S2MM_ADDR_OFFSET
					+ XAXIVDMA_START_ADDR_OFFSET + 4)));
	xil_printf("\t S2MM_START_ADDR2 = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_S2MM_ADDR_OFFSET
					+ XAXIVDMA_START_ADDR_OFFSET + 8)));
	xil_printf("\t S2MM_HSIZE       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_S2MM_ADDR_OFFSET
					+ XAXIVDMA_HSIZE_OFFSET)));
	xil_printf("\t S2MM_VSIZE       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_S2MM_ADDR_OFFSET
					+ XAXIVDMA_VSIZE_OFFSET)));
	xil_printf("\t ----------------\n\r");
	xil_printf("\t MM2S_DMACR       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_TX_OFFSET
					+ XAXIVDMA_CR_OFFSET)));
	xil_printf("\t MM2S_DMASR       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_TX_OFFSET
					+ XAXIVDMA_SR_OFFSET)));
	xil_printf("\t MM2S_STRD_FRMDLY = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_MM2S_ADDR_OFFSET
					+ XAXIVDMA_STRD_FRMDLY_OFFSET)));
	xil_printf("\t MM2S_START_ADDR0 = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_MM2S_ADDR_OFFSET
					+ XAXIVDMA_START_ADDR_OFFSET + 0)));
	xil_printf("\t MM2S_START_ADDR1 = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_MM2S_ADDR_OFFSET
					+ XAXIVDMA_START_ADDR_OFFSET + 4)));
	xil_printf("\t MM2S_START_ADDR2 = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_MM2S_ADDR_OFFSET
					+ XAXIVDMA_START_ADDR_OFFSET + 8)));
	xil_printf("\t MM2S_HSIZE       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_MM2S_ADDR_OFFSET
					+ XAXIVDMA_HSIZE_OFFSET)));
	xil_printf("\t MM2S_VSIZE       = 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + XAXIVDMA_MM2S_ADDR_OFFSET
					+ XAXIVDMA_VSIZE_OFFSET)));
	xil_printf("\t ----------------\n\r");
	xil_printf("\t S2MM_HSIZE_STATUS= 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + 0xF0)));
	xil_printf("\t S2MM_VSIZE_STATUS= 0x%08X\n\r",
			*((volatile int *) (uBaseAddr + 0xF4)));
	xil_printf("\t ----------------\n\r");

	return 0;
}

int vfb_check_errors(XAxiVdma *pAxiVdma, u8 bClearErrors) {
	u32 uBaseAddr = pAxiVdma->BaseAddr;
	Xuint32 inErrors;
	Xuint32 outErrors;
	Xuint32 Errors;

	// Get Status of Error Flags
	inErrors = *((volatile int *) (uBaseAddr + XAXIVDMA_RX_OFFSET
			+ XAXIVDMA_SR_OFFSET)) & 0x0000CFF0;
	outErrors = *((volatile int *) (uBaseAddr + XAXIVDMA_TX_OFFSET
			+ XAXIVDMA_SR_OFFSET)) & 0x000046F0;
	xil_printf("AXI_VDMA - Checking Error Flags\n\r");

	Errors = (inErrors << 16) | (outErrors);

	if (Errors) {
		if (inErrors & 0x00004000) {
			xil_printf("\tS2MM_DMASR - ErrIrq\n\r");
		}
		if (inErrors & 0x00008000) {
			xil_printf("\tS2MM_DMASR - EOLLateErr\n\r");
		}
		if (inErrors & 0x00000800) {
			xil_printf("\tS2MM_DMASR - SOFLateErr\n\r");
		}
		if (inErrors & 0x00000400) {
			xil_printf("\tS2MM_DMASR - SGDecErr\n\r");
		}
		if (inErrors & 0x00000200) {
			xil_printf("\tS2MM_DMASR - SGSlvErr\n\r");
		}
		if (inErrors & 0x00000100) {
			xil_printf("\tS2MM_DMASR - EOLEarlyErr\n\r");
		}
		if (inErrors & 0x00000080) {
			xil_printf("\tS2MM_DMASR - SOFEarlyErr\n\r");
		}
		if (inErrors & 0x00000040) {
			xil_printf("\tS2MM_DMASR - DMADecErr\n\r");
		}
		if (inErrors & 0x00000020) {
			xil_printf("\tS2MM_DMASR - DMASlvErr\n\r");
		}
		if (inErrors & 0x00000010) {
			xil_printf("\tS2MM_DMASR - DMAIntErr\n\r");
		}

		if (outErrors & 0x00004000) {
			xil_printf("\tMM2S_DMASR - ErrIrq\n\r");
		}
		if (outErrors & 0x00000400) {
			xil_printf("\tMM2S_DMASR - SGDecErr\n\r");
		}
		if (outErrors & 0x00000200) {
			xil_printf("\tMM2S_DMASR - SGSlvErr\n\r");
		}
		if (outErrors & 0x00000080) {
			xil_printf("\tMM2S_DMASR - SOFEarlyErr\n\r");
		}
		if (outErrors & 0x00000040) {
			xil_printf("\tMM2S_DMASR - DMADecErr\n\r");
		}
		if (outErrors & 0x00000020) {
			xil_printf("\tMM2S_DMASR - DMASlvErr\n\r");
		}
		if (outErrors & 0x00000010) {
			xil_printf("\tMM2S_DMASR - DMAIntErr\n\r");
		}

		// Clear error flags
		xil_printf("AXI_VDMA - Clearing Error Flags\n\r");
		*((volatile int *) (uBaseAddr + XAXIVDMA_RX_OFFSET + XAXIVDMA_SR_OFFSET)) =
				0x0000CFF0; //XAXIVDMA_SR_ERR_ALL_MASK;
		*((volatile int *) (uBaseAddr + XAXIVDMA_TX_OFFSET + XAXIVDMA_SR_OFFSET)) =
				0x000046F0; //XAXIVDMA_SR_ERR_ALL_MASK;
	}

	return Errors;
}

/// @brief fmc_imageon_enable Enable the FMC Imageon camera
/// @param config the camera configuration to enable the camera with.
/// @return 0 if successful, -1 if not
int fmc_imageon_enable(camera_config_t *config) {
	int ret;

	xil_printf("\n\r");
	xil_printf("------------------------------------------------\n\r");
	xil_printf("--    FMC-IMAGEON Camera Application (MP-2)   --\n\r");
	xil_printf("------------------------------------------------\n\r");
	xil_printf("\n\r");

	config->bVerbose = 1;
	config->vita_aec = 0;       // off
	config->vita_again = 0;     // 1.0
	config->vita_dgain = 128;   // 1.0
	config->vita_exposure = 90; // 90% of frame period

	xil_printf("FMC-IPMI Initialization ...\n\r");
	ret = fmc_iic_axi_init(&(config->fmc_ipmi_iic), "FMC-IPMI I2C Controller",
			config->uBaseAddr_IIC_FmcIpmi);
	if (!ret) {
		xil_printf("ERROR: Failed to open FMC-IIC driver,\n\r");
		exit(1);
	}

	// FMC Module Validation
	if (fmc_ipmi_detect(&(config->fmc_ipmi_iic), "FMC-IMAGEON", FMC_ID_ALL)) {
		fmc_ipmi_enable(&(config->fmc_ipmi_iic), FMC_ID_SLOT1);
	} else {
		xil_printf("ERROR: Failed to validate FMC-IPMI I2C Controller.\n\r");
		exit(1);
	}

	xil_printf("FMC-IMAGEON I2C Initialization ...\n\r");
	ret = fmc_iic_axi_init(&(config->fmc_imageon_iic),
			"FMC-IMAGEON I2C Controller", config->uBaseAddr_IIC_FmcImageon);
	if (!ret) {
		xil_printf("ERROR: Failed to open FMC-IIC driver\n\r");
		exit(1);
	}

	xil_printf("FMC-IMAGEON Video Clock Initialization ...\n\r");
	fmc_imageon_init(&(config->fmc_imageon), "FMC-IMAGEON",
			&(config->fmc_imageon_iic));
	fmc_imageon_vclk_init(&(config->fmc_imageon));
	fmc_imageon_vclk_config(&(config->fmc_imageon),
	FMC_IMAGEON_VCLK_FREQ_148_500_000);

	xil_printf("Resetting clock generator ...\n\r");
	reset_dcms(config);

	// Initialize Video Output Timing
	xil_printf("Initializing Video Output for 1080P60 ...\n\r");

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

	if (config->bVerbose) {
		xil_printf("ADV7511 Video Output Information\n\r");
		xil_printf(
				"\tHSYNC Timing     = hav=%04d, hfp=%02d, hsw=%02d(hsp=%d), hbp=%03d\n\r",
				config->hdmio_timing.HActiveVideo,
				config->hdmio_timing.HFrontPorch,
				config->hdmio_timing.HSyncWidth,
				config->hdmio_timing.HSyncPolarity,
				config->hdmio_timing.HBackPorch);
		xil_printf(
				"\tVSYNC Timing     = vav=%04d, vfp=%02d, vsw=%02d(vsp=%d), vbp=%03d\n\r",
				config->hdmio_timing.VActiveVideo,
				config->hdmio_timing.VFrontPorch,
				config->hdmio_timing.VSyncWidth,
				config->hdmio_timing.VSyncPolarity,
				config->hdmio_timing.VBackPorch);
		xil_printf("\tVideo Dimensions = %d x %d\n\r", config->hdmio_width,
				config->hdmio_height);
	}

	config->hdmio_resolution = vres_detect(config->hdmio_width,
			config->hdmio_height);
	xil_printf("\tVideo Resolution = %s\n\r",
			vres_get_name(config->hdmio_resolution));

	xil_printf("Video Generator Configuration ...\n\r");
	vgen_init(&(config->vtc_tpg), config->uDeviceId_VTC_tpg);
	vgen_config(&(config->vtc_tpg), config->hdmio_resolution, 1);

	// FMC-IMAGEON HDMI Output Initialization
	xil_printf("FMC-IMAGEON HDMI Output Initialization ...\n\r");
	ret = fmc_imageon_hdmio_init(&(config->fmc_imageon), 1,
			&(config->hdmio_timing), 0);
	if (!ret) {
		xil_printf(
				"ERROR : Failed to init FMC-IMAGEON HDMI Output Interface\n\r");
		exit(0);
	}

	// FMC-IMAGEON VITA Camera Receiver Initialization
	xil_printf("FMC-IMAGEON VITA Camera Initialization ...\n\r");
	onsemi_vita_init(&(config->onsemi_vita), "VITA-2000",
			config->uBaseAddr_VITA_SPI, config->uBaseAddr_VITA_CAM // Base Address of VITA CAM
			);
	config->onsemi_vita.uManualTap = 25;
	// Assuming a 75 MHz AXI-Lite SPI bus
	onsemi_vita_spi_config(&(config->onsemi_vita), (75000000 / 10000000) // AXI-Lite SPI Speed (HZ) / 10,000,000 Hz
			);

	// Enable spread-spectrum clocking (SSC)
	enable_ssc(config);

	// Clear frame stores
	Xuint32 i;
	Xuint32 storage_size = config->uNumFrames_HdmiFrameBuffer
			* ((1920 * 1080) << 1);
	volatile Xuint32 *pStorageMem =
			(Xuint32 *) config->uBaseAddr_MEM_HdmiFrameBuffer;

	xil_printf("pStorageMem = %X\n\r", pStorageMem);

	// Frame #1 - Red pixels
	for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
		*pStorageMem++ = 0xF0525A52; // Red
	}
	// Frame #2 - Green pixels
	for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
		*pStorageMem++ = 0x36912291; // Green
	}
	// Frame #3 - Blue pixels
	for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
		*pStorageMem++ = 0x6E29F029; // Blue
	}

	Xil_DCacheFlush(); // Flush Cache

	// Initialize Output Side of AXI VDMA
	xil_printf("Video DMA (Output Side) Initialization ...\n\r");
	vfb_common_init(config->uDeviceId_VDMA_HdmiFrameBuffer, // uDeviceId
			&(config->vdma_hdmi)                    // pAxiVdma
			);
	vfb_tx_init(&(config->vdma_hdmi),                  // pAxiVdma
			&(config->vdmacfg_hdmi_read),          // pReadCfg
			config->hdmio_resolution,              // uVideoResolution
			config->hdmio_resolution,              // uStorageResolution
			config->uBaseAddr_MEM_HdmiFrameBuffer, // uMemAddr
			config->uNumFrames_HdmiFrameBuffer     // uNumFrames
			);

	// Output static Frame buffer for 5 seconds
	xil_printf("Output static Frame buffer for 5 seconds\n\r");
	sleep(5);

	// Initialize Input Side of AXI VDMA
	xil_printf("Video DMA (Input Side) Initialization ...\n\r");
	vfb_rx_init(&(config->vdma_hdmi),                  // pAxiVdma
			&(config->vdmacfg_hdmi_write),         // pWriteCfg
			config->hdmio_resolution,              // uVideoResolution
			config->hdmio_resolution,              // uStorageResolution
			config->uBaseAddr_MEM_HdmiFrameBuffer, // uMemAddr
			config->uNumFrames_HdmiFrameBuffer     // uNumFrames
			);

	int vita_enabled_error = 0;
	int vita_enable_attempt = 1;
	do {
		xil_printf("\r\n\n\nFMC_IMAGEON_ENABLE_VITA, attempt %d\r\n\n\n",
				vita_enable_attempt++);
		vita_enabled_error = fmc_imageon_enable_vita(config);
		if (vita_enable_attempt > VITA_ENABLE_ATTEMPT_LIMIT) {
			xil_printf("VITA Camera failed to initialize after %d attempts\r\n",
			VITA_ENABLE_ATTEMPT_LIMIT);
			return -1;
		}
	} while (vita_enabled_error != 0);

	// Uncomment to enable HW Video processing pipeling (last part of lab)
	// You need to complete implmentation of this function before enabling
	fmc_imageon_enable_ipipe(config);

	// Output Video input source in Hardware mode for 10 seconds
	xil_printf("Output Video input source in Hardware mode for 1 seconds\n\r");
	sleep(1);

	// Status of AXI VDMA
	vfb_dump_registers(&(config->vdma_hdmi));
	if (vfb_check_errors(&(config->vdma_hdmi), 1 /*clear errors, if any*/)) {
		vfb_dump_registers(&(config->vdma_hdmi));
	}

	xil_printf("\n\r");
	xil_printf("Done\n\r");
	xil_printf("\n\r");

	return 0;
}

int fmc_imageon_enable_vita(camera_config_t *config) {
	int ret;

	// VITA-2000 Initialization
	xil_printf("FMC-IMAGEON VITA Initialization ...\n\r");
	ret = onsemi_vita_sensor_initialize(&(config->onsemi_vita),
	SENSOR_INIT_ENABLE, config->bVerbose);
	if (ret == 0) {
		xil_printf("VITA sensor failed to initialize ...\n\r");
		return -1;
	}

	onsemi_vita_sensor_initialize(&(config->onsemi_vita), SENSOR_INIT_STREAMON,
			config->bVerbose);
	sleep(1);

	xil_printf("FMC-IMAGEON VITA Configuration for 1080P60 timing ...\n\r");
	ret = onsemi_vita_sensor_1080P60(&(config->onsemi_vita), config->bVerbose);
	if (ret == 0) {
		xil_printf(
				"VITA sensor failed to configure for 1080P60 timing ...\n\r");
		return -1;
	}
	sleep(1);

	onsemi_vita_get_status(&(config->onsemi_vita), &(config->vita_status_t1),
			0 /*config->bVerbose*/);
	sleep(1);
	onsemi_vita_get_status(&(config->onsemi_vita), &(config->vita_status_t2),
			0 /*config->bVerbose*/);

	int vita_width, vita_height, vita_rate, vita_crc;
	vita_width = config->vita_status_t1.cntImagePixels * 4;
	vita_height = config->vita_status_t1.cntImageLines;
	vita_rate = config->vita_status_t2.cntFrames
			- config->vita_status_t1.cntFrames;
	vita_crc = config->vita_status_t2.crcStatus;
	xil_printf("VITA Status = \n\r");
	xil_printf("\tImage Width  = %d\n\r", vita_width);
	xil_printf("\tImage Height = %d\n\r", vita_height);
	xil_printf("\tFrame Rate   = %d frames/sec\n\r", vita_rate);
	xil_printf("\tCRC = %d\n\r", vita_crc);

	if (config->bVerbose) {
		onsemi_vita_get_status(&(config->onsemi_vita),
				&(config->vita_status_t2), 1);
	}

	if ((vita_width != 1920) || (vita_height != 1080) || (vita_rate == 0)) {
		return 1;
	}

	return 0;
}


int fmc_imageon_enable_ipipe(camera_config_t *config) {
	int result;
	Config_ptr_422 = XVprocSs_LookupConfig(XPAR_XVPROCSS_1_DEVICE_ID);

	result = XVprocSs_CfgInitialize(&proc_ss_444_to_422, Config_ptr_422,			0x43C10000
			);
	if (result != XST_SUCCESS) {
		xil_printf("Error initializing 4:4:4 to 4:2:2 conversion\n\r");
		return -1;
	}

	// Set Up HW REG Width for SS1
	Xil_Out16(
			(0x43C10010), (u16) (1920) // Number of Active Pixels per Scanline
			);
	// Set Up HW REG Height for SS1
	Xil_Out16(
			(0x43C10018), (u16) (1080) // Number of Active Lines per Frame
			);
	// Set HW REG Input Video Format for SS1
	Xil_Out8(
			0x43C10020,
			(u8) (0x01));
	// Set HW REG Output Video Format for SS1
	Xil_Out8(
			(0x43C10028),
			(u8) (0x02));
	Xil_Out32((0x43C10000),			(u32) (0x81) 			);

	xil_printf("4:4:4 to 4:2:2 Starting ...\n\r");
	XVprocSs_Start(&proc_ss_444_to_422);
	xil_printf("4:4:4 to 4:2:2 Started ...\n\r");

	Config_ptr = XVprocSs_LookupConfig(0);

	result = XVprocSs_CfgInitialize(&proc_ss_RGB_YCrCb_444, Config_ptr, 0x43C00000);
	if (result != 0L) {
		return -1;
	}

	result = XV_CscSetColorspace(proc_ss_RGB_YCrCb_444.CscPtr, XVIDC_CSF_RGB, //
			1, //
			1,        //
			1,        //
			2       //
			);
	if (result != 0L) {
		return -1;
	}

	result = XVprocSs_SetSubsystemConfig(&proc_ss_RGB_YCrCb_444);
	if (result != 0L) {
		return -1;
	}
	result = XV_CscSetColorspace(proc_ss_RGB_YCrCb_444.CscPtr, XVIDC_CSF_RGB, //
			1, //
			1,        //
			1,        //
			2       //
			);
	if (result != 0L) {
		return -1;
	}
	XVprocSs_Start(&proc_ss_RGB_YCrCb_444);

	// # Demosaic Bayer Pattern to 24b RGB IP Setup (PG286)

	// Active Width Configuration (Number of Active Pixels per Scanline)
	Xil_Out32(
			(0x43C40010), (u32) (1920) // Number of Active Pixels per Scanline
			);
	// Active Height Configuration (Number of Active Scanlines per Frame)
	Xil_Out32((0x43C40018), (u32) (1080));
	// Bayer Phase Configuration (Bayer Pattern)
	Xil_Out32((0x43C40028), (u32) (0));
	// 0b10000001 means start and freerun mode (page 16 in PG286)
	Xil_Out32((0x43C40000), (u32) (0x81) );

	xil_printf("Demosaic IP Configuring and Enable done\r\n"); // RGRG sensor pattern

	return 0;
}


void enable_ssc(camera_config_t *config) {
	int i;

	Xuint8 iic_cdce913_ssc_on[3][2] = { { 0x10, 0x6D }, // SSC = 011 (0.75%)
			{ 0x11, 0xB6 }, //
			{ 0x12, 0xDB }  //
	};

	if (config->bVerbose) {
		xil_printf("Enabling spread-spectrum clocking (SSC)\n\r");
		xil_printf("\ttype=down-spread, amount=-0.75%%\n\r");
	}
	fmc_imageon_iic_mux(&(config->fmc_imageon), 3);

	for (i = 0; i < 3; i++) {
		config->fmc_imageon.pIIC->fpIicWrite(config->fmc_imageon.pIIC,
		0x65, (0x80 | iic_cdce913_ssc_on[i][0]),
				&(iic_cdce913_ssc_on[i][1]), 1 //
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
void set_start_address(XAxiVdma* vdma, u16 dir, u8 frame, u16* addr) {
	u32 start_addr_offset = dir == 1 ? 0xAC : 0x5C;
	u32 vsize_offset = dir == 1 ? 0xA0 : 0x50;
	frame &= 0x1F;

#define START_ADDR *((volatile u32*) (vdma->BaseAddr + start_addr_offset + (frame * 0x4)))
#define VSIZE *((volatile u32*) (vdma->BaseAddr + vsize_offset))

	START_ADDR = (u32) addr;

	// Apply the change
	VSIZE = VSIZE;

#undef START_ADDR
#undef VSIZE
}

u16* get_start_address(XAxiVdma* vdma, u16 dir, u8 frame) {
	u32 start_addr_offset = dir == XAXIVDMA_WRITE ? 0xAC : 0x5C;
	frame &= 0x1F;

#define START_ADDR *((volatile u32*) (vdma->BaseAddr + start_addr_offset + (frame * 0x4)))

	return (u16*) START_ADDR;

#undef START_ADDR
}

u8 get_current_frame_pointer(XAxiVdma* vdma, u16 dir) {
	u8 result = 0;

	u32 mask = 0;
	u32 shift_amt = 0;

	if (dir == 2) {
		mask = 0x1F0000;
		shift_amt = 16;
	} else if (dir == 1) {
		mask = 0x1F00000;
		shift_amt = 24;
	}

	result = (*((volatile u32*) (vdma->BaseAddr + 0x00000028))
			& mask) >> shift_amt;

	return result;
}

void set_park_frame(XAxiVdma* vdma, u8 frame, u16 dir) {
#define	PARK *((volatile u32*) (vdma->BaseAddr + 0x00000028))

	u32 mask = 0;
	u32 shift_amt = 0;

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
	config->uBaseAddr_IIC_FmcIpmi = XPAR_FMC_IPMI_ID_EEPROM_0_BASEADDR; // Device for reading HDMI board IPMI EEPROM information
	config->uBaseAddr_IIC_FmcImageon = XPAR_FMC_IMAGEON_IIC_0_BASEADDR; // Device for configuring the HDMI board

	config->uBaseAddr_VITA_SPI = 0x43C30000; // Device for configuring the Camera sensor
	config->uBaseAddr_VITA_CAM = 0x43C20000; // Device for receiving Camera sensor data

	config->uDeviceId_VTC_tpg = XPAR_V_TC_0_DEVICE_ID; // Video Timer Controller (VTC) ID
	config->uDeviceId_VDMA_HdmiFrameBuffer = XPAR_AXI_VDMA_0_DEVICE_ID;	// VDMA ID
	config->uBaseAddr_MEM_HdmiFrameBuffer = XPAR_DDR_MEM_BASEADDR + 0x10000000; // VDMA base address for Frame buffers
	config->uNumFrames_HdmiFrameBuffer = XPAR_AXIVDMA_0_NUM_FSTORES; // NUmber of VDMA Frame buffers

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
#define READ_CR *((volatile u32*)(camera_config.vdma_hdmi.BaseAddr + XAXIVDMA_RX_OFFSET + XAXIVDMA_CR_OFFSET))
#define WRITE_CR *((volatile u32*)(camera_config.vdma_hdmi.BaseAddr + XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET))

	READ_CR &= ~0x2;
	WRITE_CR &= ~0x2;

#undef READ_CR
#undef WRITE_CR

	while (1) {

	}

	return 0;
}
