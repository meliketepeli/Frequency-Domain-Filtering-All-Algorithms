% Frequency Domain Filtering Algorithm

clc
clear all;
image=imread("image1.bmp");
figure
imshow(image);
axis on, axis normal, hold on;

% 2-D Fast Fourier Transformation
fast=fft2(image);
figure
imshow(fast);

%showing complex magnitude
figure
imshow(uint8(abs(fast)));

% shift zero-frequency component to center of spectrum
figure 
imshow(uint8(abs(fftshift(fast))));

%showing log base
figure
imshow(uint8(10*log(abs(fftshift(fast)))));


imagesc(10*log(abs(fftshift(fast))));
axis on, axis normal, hold on;

% Inverse Fast Fourier Transform  --you have to transform uint8 format
ifast=ifft2(fast);
image2=uint8(ifast);
figure
imshow(image2);
axis on, axis normal, hold on;
