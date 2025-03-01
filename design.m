function bayerImage = design(rgbImage, bayerPattern, outputFilename)
% createBayerImage - Converts an RGB image to a Bayer filtered image
%
% Inputs:
% rgbImage - Original RGB image (MxNx3)
% bayerPattern - String specifying Bayer pattern ('RGGB', 'BGGR', 'GRBG', 'GBRG')
% outputFilename - String containing the output file name (optional)
%
% Output:
% bayerImage - Bayer pattern image (single channel)

% Get image dimensions
[height, width, ~] = size(rgbImage);
bayerImage = zeros(height, width, 'uint8');

% Extract individual color channels
R = rgbImage(:,:,1);
G = rgbImage(:,:,2);
B = rgbImage(:,:,3);

% Apply Bayer pattern sampling based on the specified pattern
switch upper(bayerPattern)
case 'RGGB'
 bayerImage(1:2:end, 1:2:end) = R(1:2:end, 1:2:end); % R at (0,0)
 bayerImage(1:2:end, 2:2:end) = G(1:2:end, 2:2:end); % G at (0,1)
 bayerImage(2:2:end, 1:2:end) = G(2:2:end, 1:2:end); % G at (1,0)
 bayerImage(2:2:end, 2:2:end) = B(2:2:end, 2:2:end); % B at (1,1)
case 'BGGR'
 bayerImage(1:2:end, 1:2:end) = B(1:2:end, 1:2:end); % B at (0,0)
 bayerImage(1:2:end, 2:2:end) = G(1:2:end, 2:2:end); % G at (0,1)
 bayerImage(2:2:end, 1:2:end) = G(2:2:end, 1:2:end); % G at (1,0)
 bayerImage(2:2:end, 2:2:end) = R(2:2:end, 2:2:end); % R at (1,1)
case 'GRBG'
 bayerImage(1:2:end, 1:2:end) = G(1:2:end, 1:2:end); % G at (0,0)
 bayerImage(1:2:end, 2:2:end) = R(1:2:end, 2:2:end); % R at (0,1)
 bayerImage(2:2:end, 1:2:end) = B(2:2:end, 1:2:end); % B at (1,0)
 bayerImage(2:2:end, 2:2:end) = G(2:2:end, 2:2:end); % G at (1,1)
case 'GBRG'
 bayerImage(1:2:end, 1:2:end) = G(1:2:end, 1:2:end); % G at (0,0)
 bayerImage(1:2:end, 2:2:end) = B(1:2:end, 2:2:end); % B at (0,1)
 bayerImage(2:2:end, 1:2:end) = R(2:2:end, 1:2:end); % R at (1,0)
 bayerImage(2:2:end, 2:2:end) = G(2:2:end, 2:2:end); % G at (1,1)
otherwise
 error('Unknown Bayer pattern. Use RGGB, BGGR, GRBG, or GBRG.');
end

% Save the output image to a file if outputFilename is provided
if nargin > 2 && ~isempty(outputFilename)
    % Save the bayer image
    imwrite(bayerImage, outputFilename);
    fprintf('Bayer image saved to %s\n', outputFilename);
end
end