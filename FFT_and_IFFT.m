% Fast Fourier Transform and Inverse Fast Fourier Transform

clc
clear all;
image=imread("image1.bmp");
figure
imshow(image);
axis on, axis normal, hold on;

% Fast Fourier Transform
% fftshift is that low frequency components are generally 
% placed in the corners as a result of FFT, 
% and with fftshift these components are moved to the center
fourier=fftshift(fft2(image));
figure
imshow(fourier); % this part is not correct because the FFT result contains complex numbers

% power of a frequency component
figure
imagesc(log(abs(fourier)));
axis on, axis normal, hold on;

% phase (angle) i.e. location finding
figure
imagesc(angle(fourier));
axis on, axis normal, hold on;

% Inverse Fourier Transform part
ifourier=ifft2(ifftshift(fourier));
image2=uint8(abs(ifourier)); %IFFT result can be complex number so we used abs
imshow(image2);
axis on, axis normal, hold on;
