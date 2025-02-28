# cpre488-mp2

## Introduction

## Development

Initialize the `Vivado_init.tcl` script to set up your Vivado environment startup script.
```shell
python3 init.py
```

Run the `Vivado/gen_src.tcl` script to generate the IP cores and other sources from the Vivado project configuration.

```bat
cd %userprofile%
```

## Report 

Tasks:

- [ ] [detailed system diagram](#detailed-system-diagram)
- [ ] [starter hardware operation intentions](#starter-hardware-operation-intentions)
- [ ] [changes mande to camera_app.c](#changes-mande-to-camera_app.c)
- [ ] [why at this point, camera has no color](#why-at-this-point-camera-has-no-color)
- [ ] The image pipeline should proceed from vita -> vid_in -> v_demosaic_0 -> v_proc_ss0 (Color Conversion Only) -> v_proc_ss1 (422-444 Chroma Resampling Only) -> axis_subset_converter -> vdma_S2MM -> vdma_MM2S -> vid_out -> hdmi_out. Provide a diagram for this awesome pipeline in your writeup, making sure to label the bit width of the relevant signals.
- [ ] In your writeup, describe the performance of your image processing pipeline (in terms of frames per second), and how you measured it.
- [ ] 1) Note that several of these ports in the XDC file are paired together, with one port ending in _p and the other ending in _n. In your writeup, briefly describe what this pairing of signals signifies, and what this configuration is typically used for.
- [ ] 2) We convert the 8-bit output of the “Video In to AXI4-Stream” IP core to 16-bits to be given to the VDMA by appending the 8-bit value “10000000” (see step 3.vii),. Explain why this is an appropriate value to append, and why appending “00000000” would not make sense.
- [ ] Provide your Matlab Prototype software and your original RGB image, corresponding Bayer image, and final output of your conversion algorithm in a folder named part5/
- [ ] In your writeup, describe the performance of your software-based color conversion (in terms of frames per second), and how you measured it. Overall this is a non-trivial piece of software, so put in a good faith effort for this part and in your writeup, describe your testing methodology. If you get really stuck, fork your project so that you can continue to work on the remaining system design parts.
- [ ] The YCbCr 4:2:2 pattern is an example of an encoding scheme referred to as chroma subsampling: http://en.wikipedia.org/wiki/Chroma_subsampling#4:2:2. Because the human visual system is less sensitive to the position and motion of color than it is to luminance, bandwidth can be optimized by storing more luminance detail than color detail. Look at the VDMA initialization code in function fmc_imageon_enable(), and infer from the Red, Green, and Blue examples how the 16-bit 4:2:2 YCbCr format is encoded. Briefly describe this in your writeup, and use this format as the output of your camera_loop() conversion pass.

## detailed system diagram 

The following diagram illustrates the interconnection between the various modules in the
system, both at the IP core level (i.e. the components in our VIVADO design) as well as the board
level (i.e. the various chips that work together to connect the output video to the monitor).

## Starter Hardware Operation Intentions

The following is a list of the intended operations of the given start mp-2 design hardware.

## changes mande to camera_app.c

Describe in your writeup what changes you made, and
save a copy of any files modified (presumably only camera_app.c and fmc_imageon_utils.c) during
this process into a folder named part3

## why at this point, camera has no color

A video mode, which records and can replay up to 5 seconds of 1080p video. (10 bonus points).
A digital zoom mode, which uses the up and down buttons to zoom in and out of the current scene.
(10 bonus points).
Various analog and digital adjustments for the gain, exposure, and other common user-configurable
digital camera settings. (2 bonus points each: up to 8pts)
