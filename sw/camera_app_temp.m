function pMM2S_Mem = camera_app_temp()
    % Read a sample color image
    img = imread('peppers.png');
    % Optionally resize for testing (e.g., to 256x256 instead of full resolution)
    img = imresize(img, [1920, 1080]);
    [height, width, ~] = size(img);

    % Generate a synthetic BGGR Bayer image
    bayer = zeros(height, width, 'uint8');
    for y = 1:height
        for x = 1:width
            if mod(y,2)==1  % Odd rows: BG row
                if mod(x,2)==1
                    % Blue pixel
                    bayer(y,x) = img(y,x,3);
                else
                    % Green pixel
                    bayer(y,x) = img(y,x,2);
                end
            else  % Even rows: GR row
                if mod(x,2)==1
                    % Green pixel
                    bayer(y,x) = img(y,x,2);
                else
                    % Red pixel
                    bayer(y,x) = img(y,x,1);
                end
            end
        end
    end

    % For compatibility with the processing code, simulate a 16-bit
    % memory where the Bayer value is stored in the high byte.
    pS2MM_Mem = uint16(bayer) * 256;
    
    % Preallocate output memory for the processed YCbCr422 data
    pMM2S_Mem = zeros(width * height, 1, 'uint16');

    %% Start of camera_app_temp.c translation %%
    % Create arrays for processing
    rgbImage = zeros(1920*1080*3, 1, 'uint8');
%     pS2MM_Mem = zeros(1920*1080, 1, 'uint16');
%     pMM2S_Mem = zeros(1920*1080, 1, 'uint16');

    % Process frames with Bayer demosaicing    
    for j = 1:1000
        for i = 1:((1920 - 1) * (1080 - 1))
            pixel_value = bitand(bitshift(pS2MM_Mem(i), -8), 255);
            R = 0;
            G = 0;
            B = 0;

            x = mod(i-1,1920);
            y = floor((i-1) / 1920);

            if (mod(y,2) == 0)
                if (mod(x,2) == 0)
                    % Blue pixel in the BG row
                    B = pixel_value;
                    G = ((bitand(bitshift(pS2MM_Mem(i + 1), -8), 255) + bitand(bitshift(pS2MM_Mem(i + 1920), -8), 255)) / 2);
                    R = bitand(bitshift(pS2MM_Mem(i + 1921), -8), 255);
                else
                    % Green pixel in the BG row
                    G = pixel_value;
                    B = bitand(bitshift(pS2MM_Mem(i - 1), -8), 255);
                    R = bitand(bitshift(pS2MM_Mem(i + 1920), -8), 255);
                end
            else
                if (mod(x,2) == 0)
                    % Green pixel in the GR row
                    G = pixel_value;
                    B = bitand(bitshift(pS2MM_Mem(i - 1920), -8), 255);
                    R = bitand(bitshift(pS2MM_Mem(i + 1), -8), 255);
                else 
                    % Red pixel in the GR row
                    R = pixel_value;

                    if (i + 1920) >= 2073600
                        print("Fuck")
                    end
                    G = ((bitand(bitshift(pS2MM_Mem(i + 1), -8), 255) + bitand(bitshift(pS2MM_Mem(i + 1920), -8), 255)) / 2);
                    B = bitand(bitshift(pS2MM_Mem(i - 1920), -8), 255);
                end
            end % mod(y,2)
            
            % Convert RGB to YCbCr
            Y = 0.183 * R + 0.614 * G + 0.062 * B + 16;
            Cb = -0.101 * R - 0.338 * G + 0.439 * B + 128;
            Cr = 0.439 * R - 0.399 * G - 0.040 * B + 128;
            
            % Clamp YCbCr values to valid range
            Y = max(16, min(235, Y));
            Cb = max(16, min(240, Cb));
            Cr = max(16, min(240, Cr));

            % Chroma subsampling
            if (mod(x,2) == 0)
                % Store Y for the first pixel and Cb
                YCbCr = bitor(bitshift(uint16(Y), 8), bitand(uint16(Cb), 255));
                pMM2S_Mem(i) = YCbCr;
            else
                % Store Y for the second pixel and Cr
                YCbCr = bitor(bitshift(uint16(Y), 8), bitand(uint16(Cr), 255));
                pMM2S_Mem(i) = YCbCr;
            end 

        end % i
    end % j

    % Display results for visual verification
    figure, imshow(bayer), title('Synthetic Bayer Image');
    % Compare with MATLAB's built-in demosaic for reference:
    rgb_builtin = demosaic(bayer, 'bggr');
    figure, imshow(rgb_builtin), title('MATLAB Built-in Demosaic Output');
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


