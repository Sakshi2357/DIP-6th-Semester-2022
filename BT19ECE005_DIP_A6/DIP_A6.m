%% Name - Sakshi Pandagale
%% Roll no. - BT19ECE005
%% Assignment 6 - Histogram equilization of an image

clc
clear all
close all

img=imread('C:\Users\Sakshi S Pandagale\Desktop\Pictures\Saved Pictures\BT19ECE005.jpg');
x = rgb2gray(img);
subplot(4,1,1), imshow(x), title('original image');

% initializing the variable for histogram equalized image
% getting values of rows and columns of the image
h=zeros(1,256);
[r c]=size(x);
total_no_of_pixels=r*c;
n=0:255; 

%Calculating Histogram 
for i=1:r
    for j=1:c
        h(x(i,j)+1)=h(x(i,j)+1)+1;
    end
end
%
%Getting the pdf of histogram
for i=1:256
    h(i)=h(i)/total_no_of_pixels;
end
%%
%Calculating cdf from pdf
cdf=h(1);
for i=2:256
    cdf=cdf+h(i);
    h(i)=cdf;
end
%%
%Mapping
for i=1:r
    for j=1:c
        x(i,j)=round(h(x(i,j)+1)*255);
    end
end

subplot(4,1,2), stem(h), title('histogram equilization');
subplot(4,1,3), imshow(h);
subplot(4,1,4), imshow(x), title('histogram equilized image');
