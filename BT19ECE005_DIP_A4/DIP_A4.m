%% Name - Sakshi Pandagale
%% Roll no. - BT19ECE005
%% ASSIGNMENT 4 -
%% Read a color image and display it's reddish, greenish, and blueish image

i = imread('C:\Users\Sakshi S Pandagale\Desktop\Pictures\Saved Pictures\BT19ECE005.jpg'); %% Reading the image

 %% Making the green and blue components of the image = 0
R = i;
R(:,:,2) = 0; 
R(:,:,3) = 0;  

 %% Making the red and blue components of the image = 0
G = i;
G(:,:,1) = 0;
G(:,:,3) = 0;

 %% Making the red and green components of the image = 0
B = i;
B(:,:,1) = 0;
B(:,:,2) = 0;

 %% Displaying all the images

subplot(2,2,1), imshow(i), title('Original Image');
subplot(2,2,2), imshow(R), title('Red Layer');
subplot(2,2,3), imshow(G), title('Green Layer');
subplot(2,2,4), imshow(B), title('Blue Layer');