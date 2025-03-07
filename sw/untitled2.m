close all;
clear;
clc;

%% For RGB images
% I = imread('peppers.png');
% [M,N,L] = size(I);
% J = zeros(M,N);
% R = I(:,:,1);
% G = I(:,:,2);
% B = I(:,:,3);
% J(1:2:M,1:2:N) = R(1:2:M,1:2:N);
% J(2:2:M,2:2:N) = B(2:2:M,2:2:N);
% J(J==0) = G(J==0);
% T = zeros(M,N,3);
% figure,imshow(uint8(J));

%% For Bayer Filtered images
J = imread('bayer_image.tif');
[M,N] = size(J);
T = zeros(M,N,3, "uint8");

J = double(J); % Prevents overflow during interpolation

%% Reconstruct Bayer Filtered Image
% Interpolate by averaging over 3x3 kernel
for i = 2:M-1
    for j = 2:N-1
        % Green Pixels even, odd || odd, even
        if (mod(i,2) == 0 && mod(j,2) == 1) || (mod(i,2) == 1 && mod(j,2) == 0)
            % Green remains the same
            T(i,j,2) = J(i,j);
            % Average red neighbors in 3x3
            T(i,j,1) = round((J(i-1, j) + J(i+1, j) + J(i, j-1) + J(i, j+1)) / 4);
            % Average blue neighbors in 3x3
            T(i,j,3) = round((J(i-1, j-1) + J(i-1, j+1) + J(i+1, j-1) + J(i+1, j+1)) / 4);

        % Red Pixels - odd, odd
        elseif mod(i,2) == 1 && mod(j,2) == 1
            % Red remains the same
            T(i,j,1) = J(i,j);
            % Average green neighbors in 3x3
            T(i,j,2) = round((J(i-1, j) + J(i+1, j) + J(i, j-1) + J(i, j+1)) / 4);
            % Average blue neighbors in 3x3
            T(i,j,3) = round((J(i-1, j-1) + J(i-1, j+1) + J(i+1, j-1) + J(i+1, j+1)) / 4);

        % Blue Pixels - even, even
        else
            % Average red neighbors in 3x3
            T(i,j,1) = round((J(i-1, j-1) + J(i-1, j+1) + J(i+1, j-1) + J(i+1, j+1)) / 4);
            % Average green neighbors in 3x3
            T(i,j,2) = round((J(i-1, j) + J(i+1, j) + J(i, j-1) + J(i, j+1)) / 4);
            % Blue remains the same
            T(i,j,3) = J(i,j);
        end
    end
end


%% YCbCr 4:2:2 downsample
m_const_YCbCr = [0.183 0.614 0.062; -0.101 -0.338 0.439; 0.439 -0.399 -0.040];
a_const_YCbCr = [16; 128; 128];

R = T(:,:,1);
B = T(:,:,2);
G = T(:,:,3);

T_mat = {R;G;B};
YCbCr_mat = cell(3,1);

for i = 1:3
    temp = zeros(3000,4000,'double');
    for j = 1:3
        temp = temp + double(m_const_YCbCr(i,j)) * double(T_mat{j});
    end

    YCbCr_mat{i} = temp + a_const_YCbCr(i);
end

[m, n] = size(YCbCr_mat{1});
YCbCr_img = zeros(m, n, 3, "uint8");
for i = 1:3
    YCbCr_img(:,:,i) = YCbCr_mat{i};
end

%% Display shit
J = uint8(J); % Output should be 8 bit 
% T = uint8(T);
figure,imshow(J), title("Bayer encoded tif");
figure,imshow(T), title("Reconstructed Bayer");
figure,imshow(YCbCr_img), title("Reconstructed Bayer - YCbCr");
% YCbCr_given = rgb2ycbcr(T);
% figure,imshow(YCbCr_given), title("Reconstructed Bayer - YCbCr given");
given = demosaic(uint8(J), 'rggb');
figure,imshow(given), title("Reconstructed Bayer with built-in function - uint8");
YCbCr_given = rgb2ycbcr(given);
figure,imshow(YCbCr_given), title("Reconstructed Bayer - YCbCr given");


%% RGB iamge into Beyer-encoded image
% % RGB = imread('q.jpg'); % Load your color image
% % RGB = im2double(RGB); % Convert to double precision for better accuracy
% % 
% % % Ensure the image has an even number of rows and columns
% % RGB = RGB(1:floor(end/2)*2, 1:floor(end/2)*2, :);
% % 
% % % Create a Bayer-patterned image (RGGB example)
% % Bayer = zeros(size(RGB, 1), size(RGB, 2));
% % 
% % % Assign only one color component per pixel location
% % Bayer(1:2:end, 1:2:end) = RGB(1:2:end, 1:2:end, 1); % Red channel (R)
% % Bayer(1:2:end, 2:2:end) = RGB(1:2:end, 2:2:end, 2); % Green channel (G1)
% % Bayer(2:2:end, 1:2:end) = RGB(2:2:end, 1:2:end, 2); % Green channel (G2)
% % Bayer(2:2:end, 2:2:end) = RGB(2:2:end, 2:2:end, 3); % Blue channel (B)
% % 
% % % Save the Bayer image
% % imwrite(Bayer, 'bayer_image.tif');
% % 
% % BayerImg = imread('bayer_image.tif'); % Read the simulated raw Bayer image
% % RGB_reconstructed = demosaic(BayerImg, 'rggb'); % Use the correct Bayer pattern
% % imshow(RGB_reconstructed);