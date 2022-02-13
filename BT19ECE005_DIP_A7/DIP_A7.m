%% Name - Sakshi Pandagale
%% Roll no. - BT19ECE005
%% Assignment 7 - Contrast Mainpulation

clc
clear all
close all

img=imread('C:\Users\Sakshi S Pandagale\Desktop\Pictures\Saved Pictures\BT19ECE005.jpg');

L = img / 2; %% Lowering contrast of the image
H = img * 2; %% Increasing contrast of the image

subplot(1,3,1), imshow(img), title('original image');
subplot(1,3,2), imshow(L), title('low contrast image');
subplot(1,3,3), imshow(H), title('high contrast image');