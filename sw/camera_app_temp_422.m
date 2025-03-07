function pMM2S_Mem = camera_app_temp_422()
    img = imread('mandi.tif');         % Read the image (assumed size 1080x1920)
    [height, width] = size(img);        % height = 1080, width = 1920
    
    % Simulate a 16-bit memory where the Bayer value is stored in the high byte.
    pS2MM_Mem = uint16(img) * 256;      
    % Reshape into a 2D matrix (if not already in that form)
    pS2MM_Mem = reshape(pS2MM_Mem, height, width);
    
    % Preallocate output memory for the processed YCbCr422 data
    pMM2S_Mem = zeros(height, width, 'uint16');
    
    % Loop over pixels, leaving a 1-pixel border to avoid out-of-bound accesses.
    for row = 1:(height - 1)
        for col = 1:(width - 1)
            % Extract current pixel value (shifted to the lower byte)
            pixel_value = bitand(bitshift(pS2MM_Mem(row, col), -8), 255);
            R = 0;
            G = 0;
            B = 0;
            
            % Use 0-indexed coordinates for Bayer pattern testing:
            % BGGR pattern: (0,0)=Blue, (0,1)=Green, (1,0)=Green, (1,1)=Red.
            if mod(row - 1, 2) == 0
                if mod(col - 1, 2) == 0
                    % Blue pixel in BG row
                    B = pixel_value;
                    % Neighbors: right (row, col+1), down (row+1, col), down-right (row+1, col+1)
                    G = (bitand(bitshift(pS2MM_Mem(row, col + 1), -8), 255) + ...
                         bitand(bitshift(pS2MM_Mem(row + 1, col), -8), 255)) / 2;
                    R = bitand(bitshift(pS2MM_Mem(row + 1, col + 1), -8), 255);
                else
                    % Green pixel in BG row
                    G = pixel_value;
                    B = bitand(bitshift(pS2MM_Mem(row, col - 1), -8), 255);
                    R = bitand(bitshift(pS2MM_Mem(row + 1, col), -8), 255);
                end
            else
                if mod(col - 1, 2) == 0
                    % Green pixel in GR row
                    G = pixel_value;
                    B = bitand(bitshift(pS2MM_Mem(row - 1, col), -8), 255);
                    R = bitand(bitshift(pS2MM_Mem(row, col + 1), -8), 255);
                else 
                    % Red pixel in GR row
                    R = pixel_value;
                    G = (bitand(bitshift(pS2MM_Mem(row, col + 1), -8), 255) + ...
                         bitand(bitshift(pS2MM_Mem(row + 1, col), -8), 255)) / 2;
                    B = bitand(bitshift(pS2MM_Mem(row - 1, col), -8), 255);
                end
            end
            
            % Convert RGB to YCbCr
            Y  = 0.183 * R + 0.614 * G + 0.062 * B + 16;
            Cb = -0.101 * R - 0.338 * G + 0.439 * B + 128;
            Cr =  0.439 * R - 0.399 * G - 0.040 * B + 128;
            
            % Clamp YCbCr values to valid ranges
            Y  = max(16, min(235, Y));
            Cb = max(16, min(240, Cb));
            Cr = max(16, min(240, Cr));
            
            % Chroma subsampling:
            % If the current column is even (in 0-index), store Cb with Y;
            % if odd, store Cr with Y.
            if mod(col - 1, 2) == 0
                YCbCr = bitor(bitshift(uint16(Y), 8), bitand(uint16(Cb), 255));
            else
                YCbCr = bitor(bitshift(uint16(Y), 8), bitand(uint16(Cr), 255));
            end 
            
            pMM2S_Mem(row, col) = YCbCr;
        end
    end
    
    % For visual verification, you could extract the luminance channel from pMM2S_Mem:
    Y_channel = bitshift(pMM2S_Mem, -8);
    figure, imshow(Y_channel, []), title('Extracted Luminance (Y) Channel');
end % Function

function result = clamp (value, min, max)
    if value < min 
        result = min;
    elseif value > max
        result = max;
    else
        result = value;
    end
end

function result = rgb_to_ycbcr (r, g, b)
    y_clamped = clamp((0.183 * r + 0.614 * g + 0.062 * b + 16.0), 0, 255);
    cb_clamped = clamp((-0.101 * r - 0.338 * g + 0.439 * b + 128.0), 0, 255);
    cr_clamped = clamp((0.439 * r - 0.399 * g - 0.040 * b + 128.0), 0, 255);
    result = [y_clamped, cb_clamped, cr_clamped];
end

function result = pack_ycbcr422(y, cb_or_cr, is_cb)
    result = uint16(y) * 256 + uint16(cb_or_cr);
end