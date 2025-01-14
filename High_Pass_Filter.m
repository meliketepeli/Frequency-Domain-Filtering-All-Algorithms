% High Pass Filter
clc
clear all;
image=imread("image1.bmp");
figure
imshow(image);

ftr=fftshift(fft2(image));
figure
imagesc(log(abs(ftr)));
axis on, axis normal, hold on;

[rmax cmax]=size(ftr);

rcent=rmax/2;
ccent=cmax/2;
box=10;

for i=1:rmax
    for j=1:cmax
        if (i>rcent-box) & (i<rcent+box) & (j> ccent-box) & (j<ccent+box)
                        ftr(i,j)=complex(0,0);
        else

        end
    end
end

figure
imagesc(log(abs(ftr)));
axis on, axis normal, hold on;

% IFFT part
% we looked at the frequency power 
iftr=ifft2( ifftshift(ftr),  "symmetric");
figure
imagesc(log(abs(iftr)));
axis on, axis normal, hold on;

% we looked at the location of the frequency
figure
imagesc(angle(iftr));
axis on, axis normal, hold on;

% we see the post high-pass filter version
image2=uint8(abs(iftr));
figure
imshow(image2);
axis on, axis normal, hold on;



  