# cpre488-mp2

# Report 

Completed tasks:
- [x] [detailed system diagram](#detailed-system-diagram)
- [x] [changes mande to camera_app.c](#changes-mande-to-camera_app.c)
- [x] [why at this point, camera had no color](#why-at-this-point-camera-has-no-color)
- [x]  We convert the 8-bit output of the “Video In to AXI4-Stream” IP core to 16-bits to be given to the VDMA by appending the 8-bit value “10000000” (see step 3.vii),. Explain why this is an appropriate value to append, and why appending “00000000” would not make sense.
- [x]  Note that several of these ports in the XDC file are paired together, with one port ending in _p and the other ending in _n. In your writeup, briefly describe what this pairing of signals signifies, and what this configuration is typically used for.
- [x] [starter hardware operation intentions](#starter-hardware-operation-intentions)
- [x] Bonus Credit: Various Analog and Digital Adjustments

Completed But need checks:
- [x] The YCbCr 4:2:2 pattern is an example of an encoding scheme referred to as chroma subsampling: http://en.wikipedia.org/wiki/Chroma_subsampling#4:2:2. Because the human visual system is less sensitive to the position and motion of color than it is to luminance, bandwidth can be optimized by storing more luminance detail than color detail. Look at the VDMA initialization code in function fmc_imageon_enable(), and infer from the Red, Green, and Blue examples how the 16-bit 4:2:2 YCbCr format is encoded. Briefly describe this in your writeup, and use this format as the output of your camera_loop() conversion pass.

Tasks:

- [ ] The image pipeline should proceed from vita -> vid_in -> v_demosaic_0 -> v_proc_ss0 (Color Conversion Only) -> v_proc_ss1 (422-444 Chroma Resampling Only) -> axis_subset_converter -> vdma_S2MM -> vdma_MM2S -> vid_out -> hdmi_out. Provide a diagram for this awesome pipeline in your writeup, making sure to label the bit width of the relevant signals.
- [ ] Describe performance 
  - [ ] Software Pipeline
    - [ ] Performance
    - [ ] Testing Methodology
  - [ ] Hardware Pipeline
    - [ ] Performance
    - [ ] Testing Methodology
- [ ] Bonus Credit: Video Mode
- [ ] Bonus Credit: Digital Zoom Mode

## detailed system diagram 

The following diagram illustrates the interconnection between the various modules in the
system, both at the IP core level (i.e. the components in our VIVADO design) as well as the board
level (i.e. the various chips that work together to connect the output video to the monitor).

![assets/diagram.png](assets/diagram.png)

## Starter Hardware Operation Intentions

The following is a list of the intended operations of the given start mp-2 design hardware.

## Software Processing

The software processing loop implements a simple vertical flip operation by reversing the pixel order from the input frame to the output frame. This demonstrates how software can access and modify frame buffer data before display.

## What are the changes we made to `camera_app.c`?

The following are the changes made to `camera_app.c` in this project during the creation of the software processing phase.

### Software Processing Version:

#### 1. Header and Library Inclusions

- **Original Pipeline:**  
  - Includes only `"camera_app.h"` and `"xil_types.h"`.  
  - The processing logic operates directly on the pixel data without invoking any additional image processing functions.

- **New (Demosaicing) Pipeline:**  
  - Adds `#include <stdlib.h>` and `#include "include/demosaicing.h"`.  
  - `demosaicing.h` is a header file that contains the function declarations for the demosaicing algorithm. 
  - RGB to YCbCr conversion is performed in this definition.

#### 2. MDMA Park Pointer and Memory Pointer Adjustments

- **Original Pipeline:**  
  - Sets the MDMA park pointer to place the S2MM side on frame 0 and the MM2S side on frame 1 by OR-ing with `0x1`.  
  - The pointer to the MM2S memory frame is obtained with an offset of `+4`.

- **New (Demosaicing) Pipeline:**  
  - Configures the park pointer differently: it is set to `0x102`, indicating a different frame mapping (S2MM on frame 1 and MM2S on frame 2).  
  - Allows for switching the park pointer to remove tearing artifacts in the camera output.

#### 3. Frame Processing and Synchronization

- **Original Pipeline Processing Loop:**  
  - The loop iterates for 1000 frames.  
  - It applied a simple transformation (previously either a pixel reversal or brightness adjustment) across the entire frame without additional synchronization steps between frames.

- **New (Demosaicing) Pipeline Processing Loop:**  
  - The loop also processes 1000 frames but with a different focus:
    - **Demosaicing Step:** Each frame is processed by calling the function `run_demosaicing`, which converts raw sensor data (Bayer pattern) into a full color image.
    - **MDMA Park Pointer Synchronization:**  
      - After processing, the code modifies the park pointer (first setting it to `0x2` and later back to `0x102`) and then uses busy-wait loops to ensure that the hardware has switched frames before proceeding.
      - These extra steps ensure proper synchronization between the software processing and the MDMA hardware’s frame buffering.
      
## In the (`.xdc`) constraints file, what does the `_p` and `_n` pairing of signals signify, and what this configuration is typically used for?

In the constraints file, the `_p` and `_n` suffix pairs indicate differential signaling, specifically LVDS (Low-Voltage Differential Signaling). This is confirmed by the IOSTANDARD setting for these signals:

```
set_property IOSTANDARD LVDS_25 [get_ports IO_VITA_CAM_clk_out_*]
set_property IOSTANDARD LVDS_25 [get_ports IO_VITA_CAM_sync_*]
set_property IOSTANDARD LVDS_25 [get_ports IO_VITA_CAM_data_*]
```

### What LVDS Is and How It Works

LVDS uses a pair of complementary signals that are transmitted on two separate traces:
- The `_p` suffix indicates the positive/true signal
- The `_n` suffix indicates the negative/complement signal

The actual data is determined by the voltage difference between these two signals rather than the absolute voltage level. Typically, a small voltage difference (around 350mV) is used, where:
- A positive difference represents a logical '1'
- A negative difference represents a logical '0'

### Why LVDS Is Used for the Camera Interface

LVDS is used for the VITA camera interface for several important reasons:

1. **High-Speed Data Transfer**: The VITA-2000 sensor needs to transfer large amounts of image data quickly. LVDS supports high-speed data rates (often above 1 Gbps per pair) as seen in the 2.692 ns clock period (approximately 371 MHz).

2. **Noise Immunity**: Since LVDS relies on the difference between two signals rather than absolute voltage, it's highly resistant to common-mode noise that would affect both lines equally.

3. **Low EMI**: The differential pairs carry equal and opposite currents, causing the electromagnetic fields to cancel out, which reduces electromagnetic interference.

4. **Signal Integrity**: The constraint file also sets differential termination for these signals:
   ```
   set_property DIFF_TERM true [get_ports IO_VITA_CAM_clk_out_*]
   set_property DIFF_TERM true [get_ports IO_VITA_CAM_sync_*]
   set_property DIFF_TERM true [get_ports IO_VITA_CAM_data_*]
   ```
   This ensures proper signal integrity by eliminating reflections.

In this design, LVDS is specifically used for:
- Clock signals (`IO_VITA_CAM_clk_out_p/n`) - to provide a stable, clean timing reference
- Synchronization signals (`IO_VITA_CAM_sync_p/n`) - for frame timing synchronization
- Data lines (`IO_VITA_CAM_data_p/n`) - carrying the actual pixel data from the sensor

## Why are we appending 10000000 to the output of the VITA-2000 camera? Also, why would it not make sense to append 00000000?

The 0x10000000 offset creates a safe "sandbox" for the video frame buffers that won't interfere with other memory usage in the system. This is particularly important for video processing which involves large, continuous memory accesses through DMA that could otherwise corrupt system memory.

It would not make sense to append 0x00000000 to the output of the VITA-2000 camera because it would almost certainly result in memory corruption as the video data would overwrite critical program memory.
  
## Why at this point, does the camera had no color?

Before implementing the demosaicing algorithm and software processing, the camera had no color because the raw data from the camera sensor is in a Bayer pattern format rather than a processed RGB or YCbCr color format.

**Bayer Pattern Sensor Format**:

The VITA-2000 camera sensor uses a Bayer filter pattern. This means each pixel captures only one color component (Red, Green, or Blue) arranged in a specific pattern.
    
**Direct Raw Data Display**: Without the demosaic and color processing enabled, the system is directly displaying the raw Bayer pattern data, which appears as a grayscale or monochrome image. Each pixel only contains intensity information for a single color, but the display treats it as luminance-only data.

## Hardware changes

![](HW-BD.png)


4:4:4 to 4:2:2 Conversion Eq from Subsystem Documentation (PG231):

$$
o_{x,y} = \left[\sum_{k=0}^{N_{\text{taps}}-1} i_{x-k,y}\, \text{COEF}_{k,\text{HPHASEO}}\right]_0^{2^{D_w}-1}
$$


Equation 3-11

This conversion is a horizontal 2:1 decimation operation, implemented using a low-pass FIR filter to suppress chroma aliasing. In order to evaluate output pixel $o_x$,$o_y$, the FIR filter in the core convolves COEFk_HPHASE0, where k is the coefficient index, $i_x$,$i_y$ are pixels from the input image, and $[ ]^M_m$ represents rounding with clipping at M, and clamping at m. DW is the Data Width or number of bits per video component. Ntaps is the number of filter taps. The predefined filter coefficients are `[0.25 0.5 0.25]`. 


## YCbCr 4:2:2 Format Analysis

In the YCbCr 4:2:2 format, each 32-bit word (0xF0525A52, 0x36912291, 0x6E29F029) contains data for two adjacent pixels. Breaking down these values:

```c
// Frame #1 - Red pixels
for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
  *pStorageMem++ = 0xF0525A52;  // Red
}
```

1. **Red Example (0xF0525A52)**:
   - This represents two pixels in sequence
   - First 16 bits (0xF052): Y1=0xF0, Cb=0x52
   - Second 16 bits (0x5A52): Y2=0x5A, Cr=0x52
   
```c
// Frame #2 - Green pixels
for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
  *pStorageMem++ = 0x36912291; // Green
}
```
2. **Green Example (0x36912291)**:
   - First 16 bits (0x3691): Y1=0x36, Cb=0x91
   - Second 16 bits (0x2291): Y2=0x22, Cr=0x91
   
```c
// Frame #3 - Blue pixels
for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
  *pStorageMem++ = 0x6E29F029;  // Blue
}
```
3. **Blue Example (0x6E29F029)**:
   - First 16 bits (0x6E29): Y1=0x6E, Cb=0x29
   - Second 16 bits (0xF029): Y2=0xF0, Cr=0x29

The pattern for each color follows the YCbCr 4:2:2 format where:
- Each 16-bit word contains one Y (luminance) value and one chrominance (Cb or Cr) value
- The chrominance values alternate between Cb and Cr
- Two adjacent pixels share the same Cb and Cr values (the subsampling)

## Format Structure

The 4:2:2 format packs data as follows for each pair of pixels:
```
[Y1][Cb][Y2][Cr]
```

Where:
- Y1: Luminance for first pixel
- Cb: Blue color difference (shared between two pixels)
- Y2: Luminance for second pixel
- Cr: Red color difference (shared between two pixels)

This format maintains full luminance resolution (the "4" in 4:2:2) while halving the horizontal resolution of the color information (the "2:2"). This works well because human vision is more sensitive to changes in brightness than in color.

For the `camera_loop()` function's conversion pass, this format would need to be maintained when processing the data, ensuring that each 32-bit word continues to represent two pixels in the YCbCr 4:2:2 format, with the appropriate luminance and chrominance values preserved during the vertical flip operation.

## Performance

### Introduction (how we measured performance)

We measured the performance of the software and hardware pipelines in this design utilizing interrupt-driven time measurements. ...

### Software Pipeline 

#### Performance

#### Testing Methodology



### Hardware Pipeline 

#### Performance

#### Testing Methodology

## Bonus Credit

The following sections describe the bonus credit tasks that were completed for this project and how they were implemented/acomplished.

### A video mode, which records and can replay up to 5 seconds of 1080p video. 
### A digital zoom mode, which uses the up and down buttons to zoom in and out of the current scene.

### Various analog and digital adjustments for the gain, exposure, and other common user-configurable digital camera settings. 

We impelmented the following adjustments:
- Contrast
- Brightness
- Saturation

These were implemented by leveraging the second Subsystem which converts 4:4:4 to 4:2:2 and the `xvprocss.h` defined utilities.

#### Gain

### 1. Brightness Adjustment

**Explanation:**  
The brightness level is adjusted dynamically through a dedicated function. When invoked (for example, via board buttons), it calls the hardware API to update the brightness level of the processed video image.

**Code Sample:**
```c
void set_brightness(
    camera_config_t *config,
    int percent // Brightness level as a percentage
)
{
   if (config->bVerbose)
   {
      xil_printf("Setting brightness to %d\n\r", percent);
   }
   // Apply the brightness adjustment using the video processing subsystem
   XVprocSs_SetPictureBrightness(&proc_ss_RGB_YCrCb_444, (s32)percent);
}
```


### 2. Contrast Adjustment

**Explanation:**  
Similarly, contrast is adjusted using a dedicated function that calls the hardware API to modify the contrast level. This allows users to dynamically control the difference between light and dark areas in the image.

**Code Sample:**
```c
void set_contrast(
    camera_config_t *config,
    int percent // Contrast level as a percentage
)
{
   if (config->bVerbose)
   {
      xil_printf("Setting contrast to %d\n\r", percent);
   }
   // Apply the contrast adjustment using the video processing subsystem
   XVprocSs_SetPictureContrast(&proc_ss_RGB_YCrCb_444, (s32)percent);
}
```

### 4. Saturation Adjustment

**Explanation:**  
The saturation adjustment function controls the vividness of the colors in the video output. This function calls the corresponding hardware API to adjust the saturation level in the YCrCb color space.

**Code Sample:**
```c
void set_saturation(
    camera_config_t *config,
    int percent // Saturation level as a percentage
)
{
   if (config->bVerbose)
   {
      xil_printf("Setting saturation to %d\n\r", percent);
   }
   // Apply the saturation adjustment using the video processing subsystem
   XVprocSs_SetPictureSaturation(&proc_ss_RGB_YCrCb_444, (s32)percent);
}
```

Using the buttons on the board (code resused from mp-1), the user can adjust the gain, contrast, brightness, and saturation. 
