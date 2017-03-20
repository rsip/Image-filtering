clc;
clear all;
close all;
window=input('Enter Filter/Window size: ');
d=input('Enter proportion of affected pixels : ');
I=imread('C:\Users\Zoha Hamid\Desktop\lena256.tif');
figure, imshow(I)
title('Clean image');
Inoisy=imnoise(I,'salt & pepper',d); % Impulse Noise
[m,n]=size(Inoisy);
figure, imshow(uint8(Inoisy))
title('Original noisy image');


z=ones(window);
[p,q]=size(z);


w=1:p;
x=round(median(w));
anz=zeros(m+2*(x-1),n+2*(x-1));

for i=x:(m+(x-1))
    for j=x:(n+(x-1))
        anz(i,j)=Inoisy(i-(x-1),j-(x-1));
    end
end
%figure, imshow(uint8(anz))

sum=0;
x=0;
y=0;
for i=1:m
    for j=1:n
        for k=1:p
            for l=1:q
                sum= sum+anz(i+x,j+y)*z(k,l);
                y=y+1;
            end
            y=0;
            x=x+1;
        end
        x=0;
        and(i,j)=(1/(p*q))*(sum);
        sum=0;
    end
end
figure, imshow(uint8(and))
title('After Impulse denoising/ median filter');
PSNR(I,uint8(and));