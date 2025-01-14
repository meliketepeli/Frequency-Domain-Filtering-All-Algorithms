% Low-Pass Filter
clc 
clear all;

image=imread("image1.bmp");
figure
imshow(image);
title("Original Image");

% FFT 
transform=fftshift(fft2(image));
% frequency power part
figure
imagesc(log(abs(transform)));
title("FFT Power Format");
axis on, axis normal, hold on;

% location part
figure
imagesc(angle(transform));
title("FFT Phase Format");
axis on, axis normal, hold on;

[rmax cmax]=size(transform);

rcent=rmax/2;
ccent=cmax/2;
box=75;

for i=1:rmax
    for j=1:cmax
        if(i<rcent+box) & (i>rcent-box) & (j<ccent+box) & (j>ccent-box)

        else
            transform(i,j)=complex(0,0);
        end
    end
end

% state before conversion to spatial domain after low pass filter
figure
imagesc(log(abs(transform)));
title("Just Before Low-Pass Filter")
axis on, axis normal, hold on;


% IFFT part
itransform=ifft2(ifftshift(transform), "symmetric");
figure
imagesc(log(abs(itransform)));
title("IFFT Power Format");
axis on, axis normal, hold on;

image2=uint8(abs(itransform));
figure
imshow(image2);
title("Conversion to Spatial Domain after Low Pass Filter");

