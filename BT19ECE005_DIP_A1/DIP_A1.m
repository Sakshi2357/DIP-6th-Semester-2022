close all;
clear all;
clc;

%%% Task 1 - Read color image and convet it to grayscale
i=imread('C:\Users\Sakshi S Pandagale\Desktop\Pictures\Saved Pictures\BT19ECE005.jpg');
subplot(2,3,1), imshow(i);
title('Color Image');

red=i(:,:,1);
green=i(:,:,2);
blue= i(:,:,3); 

G= uint8((red/3)+(green/3)+(blue/3));
subplot(2,3,2), imshow(G);
title('Grayscale Image');

%%% Task 2 - Convert the grayscale to binary image

[r,c]=size(G);

for i=1:r
  for j=1:c
    f=G(i,j);
    if f<=127
      G(i,j)=0;
    elseif f>127 && f<256
      G(i,j)=255;
    end       
  end
end
B=G;
subplot(2,3,3),imshow(B);
title('Binary Image');
G= uint8((red/3)+(green/3)+(blue/3));

%%% Task 3 - Gray scale image + binary image and grayscale + 20

I1 = uint8(G+B);
subplot(2,3,4),imshow(I1);
title('grayscale + binary image');

I2 = uint8(G+20);
subplot(2,3,5),imshow(I2);
title('grayscale image + 20')







