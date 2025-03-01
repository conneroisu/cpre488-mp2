import cv2
import numpy as np
import matplotlib.pyplot as plt

def create_bayer_image(rgb_image, bayer_pattern='RGGB'):
    """
    Converts an RGB image to a Bayer filtered image
    
    Args:
        rgb_image: Original RGB image (HxWx3)
        bayer_pattern: String specifying Bayer pattern ('RGGB', 'BGGR', 'GRBG', 'GBRG')
        
    Returns:
        bayer_image: Bayer pattern image (single channel)
    """
    # Get image dimensions
    height, width = rgb_image.shape[:2]
    bayer_image = np.zeros((height, width), dtype=np.uint8)
    
    # Extract individual color channels
    B, G, R = cv2.split(rgb_image)  # OpenCV uses BGR format
    
    # Apply Bayer pattern sampling based on the specified pattern
    if bayer_pattern == 'RGGB':
        bayer_image[0::2, 0::2] = R[0::2, 0::2]     # R at (0,0)
        bayer_image[0::2, 1::2] = G[0::2, 1::2]     # G at (0,1)
        bayer_image[1::2, 0::2] = G[1::2, 0::2]     # G at (1,0)
        bayer_image[1::2, 1::2] = B[1::2, 1::2]     # B at (1,1)
    elif bayer_pattern == 'BGGR':
        bayer_image[0::2, 0::2] = B[0::2, 0::2]     # B at (0,0)
        bayer_image[0::2, 1::2] = G[0::2, 1::2]     # G at (0,1)
        bayer_image[1::2, 0::2] = G[1::2, 0::2]     # G at (1,0)
        bayer_image[1::2, 1::2] = R[1::2, 1::2]     # R at (1,1)
    elif bayer_pattern == 'GRBG':
        bayer_image[0::2, 0::2] = G[0::2, 0::2]     # G at (0,0)
        bayer_image[0::2, 1::2] = R[0::2, 1::2]     # R at (0,1)
        bayer_image[1::2, 0::2] = B[1::2, 0::2]     # B at (1,0)
        bayer_image[1::2, 1::2] = G[1::2, 1::2]     # G at (1,1)
    elif bayer_pattern == 'GBRG':
        bayer_image[0::2, 0::2] = G[0::2, 0::2]     # G at (0,0)
        bayer_image[0::2, 1::2] = B[0::2, 1::2]     # B at (0,1)
        bayer_image[1::2, 0::2] = R[1::2, 0::2]     # R at (1,0)
        bayer_image[1::2, 1::2] = G[1::2, 1::2]     # G at (1,1)
    else:
        raise ValueError("Unknown Bayer pattern. Use RGGB, BGGR, GRBG, or GBRG.")
    
    return bayer_image

def convert_bayer_to_rgb(bayer_image, bayer_pattern='RGGB'):
    """
    Converts a Bayer pattern image to RGB using demosaicing
    
    Args:
        bayer_image: Bayer pattern image (single channel)
        bayer_pattern: String specifying Bayer pattern ('RGGB', 'BGGR', 'GRBG', 'GBRG')
        
    Returns:
        rgb_image: Reconstructed RGB image
    """
    # Use OpenCV's demosaicing function
    if bayer_pattern == 'RGGB':
        cv_bayer_pattern = cv2.COLOR_BAYER_BG2BGR
    elif bayer_pattern == 'BGGR':
        cv_bayer_pattern = cv2.COLOR_BAYER_RG2BGR
    elif bayer_pattern == 'GRBG':
        cv_bayer_pattern = cv2.COLOR_BAYER_GB2BGR
    elif bayer_pattern == 'GBRG':
        cv_bayer_pattern = cv2.COLOR_BAYER_GR2BGR
    else:
        raise ValueError("Unknown Bayer pattern. Use RGGB, BGGR, GRBG, or GBRG.")
    
    # Apply demosaicing to convert Bayer to RGB
    rgb_image = cv2.cvtColor(bayer_image, cv_bayer_pattern)
    
    return rgb_image

def convert_to_422(rgb_image):
    """
    Converts an RGB image to YUV 4:2:2 color space
    
    Args:
        rgb_image: RGB image
        
    Returns:
        yuv_422_image: YUV 4:2:2 image
    """
    # Convert RGB to YUV
    yuv_image = cv2.cvtColor(rgb_image, cv2.COLOR_BGR2YUV)
    
    # Downsample U and V channels horizontally (4:2:2 format)
    height, width = yuv_image.shape[:2]
    yuv_422 = np.zeros((height, width, 3), dtype=np.uint8)
    
    # Keep Y channel as is
    yuv_422[:, :, 0] = yuv_image[:, :, 0]
    
    # Downsample U and V horizontally
    for i in range(height):
        for j in range(0, width, 2):
            if j + 1 < width:
                # Average U and V values for two adjacent pixels
                u_avg = (int(yuv_image[i, j, 1]) + int(yuv_image[i, j+1, 1])) // 2
                v_avg = (int(yuv_image[i, j, 2]) + int(yuv_image[i, j+1, 2])) // 2
                
                yuv_422[i, j, 1] = u_avg
                yuv_422[i, j+1, 1] = u_avg
                yuv_422[i, j, 2] = v_avg
                yuv_422[i, j+1, 2] = v_avg
            else:
                yuv_422[i, j, 1] = yuv_image[i, j, 1]
                yuv_422[i, j, 2] = yuv_image[i, j, 2]
    
    return yuv_422

# Main processing code
if __name__ == "__main__":
    # Load the image
    image_path = 'images.jpg'
    original_image = cv2.imread(image_path)
    
    if original_image is None:
        print(f"Error: Could not read image file {image_path}")
        exit(1)
    
    # Choose a Bayer pattern
    bayer_pattern = 'RGGB'  # Use one of: RGGB, BGGR, GRBG, GBRG
    
    # Convert to Bayer pattern
    bayer_image = create_bayer_image(original_image, bayer_pattern)
    
    # Save the Bayer image
    cv2.imwrite('bayer_image.png', bayer_image)
    
    # Convert Bayer back to RGB
    reconstructed_rgb = convert_bayer_to_rgb(bayer_image, bayer_pattern)
    
    # Convert to YUV 4:2:2
    yuv_422_image = convert_to_422(reconstructed_rgb)
    
    # Save the reconstructed RGB image
    cv2.imwrite('reconstructed_rgb.png', reconstructed_rgb)
    
    # Convert YUV 4:2:2 back to RGB for visualization/saving
    rgb_from_yuv = cv2.cvtColor(yuv_422_image, cv2.COLOR_YUV2BGR)
    cv2.imwrite('rgb_from_yuv_422.png', rgb_from_yuv)
    
    # Display results (optional)
    plt.figure(figsize=(15, 10))
    
    plt.subplot(2, 2, 1)
    plt.title('Original RGB Image')
    plt.imshow(cv2.cvtColor(original_image, cv2.COLOR_BGR2RGB))
    plt.axis('off')
    
    plt.subplot(2, 2, 2)
    plt.title(f'Bayer Pattern Image ({bayer_pattern})')
    plt.imshow(bayer_image, cmap='gray')
    plt.axis('off')
    
    plt.subplot(2, 2, 3)
    plt.title('Reconstructed RGB Image')
    plt.imshow(cv2.cvtColor(reconstructed_rgb, cv2.COLOR_BGR2RGB))
    plt.axis('off')
    
    plt.subplot(2, 2, 4)
    plt.title('RGB from YUV 4:2:2')
    plt.imshow(cv2.cvtColor(rgb_from_yuv, cv2.COLOR_BGR2RGB))
    plt.axis('off')
    
    plt.tight_layout()
    plt.savefig('processing_results.png')
    plt.show()
    
    print("Processing complete. Images saved.")