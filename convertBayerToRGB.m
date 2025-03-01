function rgbImage = convertBayerToRGB(bayerImage, bayerPattern)
% convertBayerToRGB - Converts a Bayer pattern image to RGB using demosaicing
%
% Inputs:
%   bayerImage - Bayer pattern image (single channel)
%   bayerPattern - String specifying Bayer pattern ('RGGB', 'BGGR', 'GRBG', 'GBRG')
%
% Output:
%   rgbImage - Reconstructed RGB image

% Get image dimensions
[height, width] = size(bayerImage);

% Create output RGB image
rgbImage = zeros(height, width, 3, 'uint8');

% Pad the Bayer image to handle border pixels
paddedBayer = padarray(bayerImage, [2, 2], 'replicate', 'both');

% Extract Bayer pattern channels based on the specified pattern
switch upper(bayerPattern)
    case 'RGGB'
        redPos = [1, 1];
        bluePos = [2, 2];
    case 'BGGR'
        redPos = [2, 2];
        bluePos = [1, 1];
    case 'GRBG'
        redPos = [1, 2];
        bluePos = [2, 1];
    case 'GBRG'
        redPos = [2, 1];
        bluePos = [1, 2];
    otherwise
        error('Unknown Bayer pattern. Use RGGB, BGGR, GRBG, or GBRG.');
end

% Initialize RGB channels
R = zeros(height, width, 'uint8');
G = zeros(height, width, 'uint8');
B = zeros(height, width, 'uint8');

% Process each pixel
for y = 1:height
    for x = 1:width
        py = y + 2;  % Padded y-coordinate
        px = x + 2;  % Padded x-coordinate
        
        % Determine current position in Bayer pattern
        xMod = mod(x, 2) + 1;
        yMod = mod(y, 2) + 1;
        
        if xMod == redPos(2) && yMod == redPos(1)
            % Red position
            R(y, x) = paddedBayer(py, px);
            
            % Green at red position (average of horizontal and vertical neighbors)
            G(y, x) = uint8(round(mean([paddedBayer(py-1, px), paddedBayer(py+1, px), ...
                                       paddedBayer(py, px-1), paddedBayer(py, px+1)])));
            
            % Blue at red position (average of diagonal neighbors)
            B(y, x) = uint8(round(mean([paddedBayer(py-1, px-1), paddedBayer(py-1, px+1), ...
                                       paddedBayer(py+1, px-1), paddedBayer(py+1, px+1)])));
            
        elseif xMod == bluePos(2) && yMod == bluePos(1)
            % Blue position
            B(y, x) = paddedBayer(py, px);
            
            % Green at blue position (average of horizontal and vertical neighbors)
            G(y, x) = uint8(round(mean([paddedBayer(py-1, px), paddedBayer(py+1, px), ...
                                       paddedBayer(py, px-1), paddedBayer(py, px+1)])));
            
            % Red at blue position (average of diagonal neighbors)
            R(y, x) = uint8(round(mean([paddedBayer(py-1, px-1), paddedBayer(py-1, px+1), ...
                                       paddedBayer(py+1, px-1), paddedBayer(py+1, px+1)])));
            
        else
            % Green position
            G(y, x) = paddedBayer(py, px);
            
            % Determine if we're at green in red row or green in blue row
            if (xMod == redPos(2) && yMod == bluePos(1)) || (xMod == bluePos(2) && yMod == redPos(1))
                % Red is horizontal, Blue is vertical
                R(y, x) = uint8(round(mean([paddedBayer(py, px-1), paddedBayer(py, px+1)])));
                B(y, x) = uint8(round(mean([paddedBayer(py-1, px), paddedBayer(py+1, px)])));
            else
                % Red is vertical, Blue is horizontal
                R(y, x) = uint8(round(mean([paddedBayer(py-1, px), paddedBayer(py+1, px)])));
                B(y, x) = uint8(round(mean([paddedBayer(py, px-1), paddedBayer(py, px+1)])));
            end
        end
    end
end

% Combine RGB channels
rgbImage(:,:,1) = R;
rgbImage(:,:,2)