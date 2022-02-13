%% Name - Sakshi Pandagale
%% Roll no - BT19ECE005
%% Assignment 5 - Perform bitplain slicing on a color image.

%Reading the image
img=imread('C:\Users\Sakshi S Pandagale\Desktop\Pictures\Saved Pictures\BT19ECE005.jpg');
% Converting the image to graysacle
A = rgb2gray(img);

% storing the LSB of bit of each pixel using bitget
% converting B1 into array of logical values (1 or 0) using logical(B)
B1=bitget(A,1);
% storing 2nd LSB of A in B2 and so on
B2=bitget(A,2);

B3=bitget(A,3);

B4=bitget(A,4);

B5=bitget(A,5);

B6=bitget(A,6);

B7=bitget(A,7);
% storing MSB of A in B8
B8=bitget(A,8);

figure,
subplot(3,4,1), imshow(img); title('Original Image');
subplot(3,4,5), imshow(logical(B1)); title('Bitplane 1');
subplot(3,4,6), imshow(logical(B2)); title('Bitplane 2');
subplot(3,4,7), imshow(logical(B3)); title('Bitplane 3');
subplot(3,4,8), imshow(logical(B4)); title('Bitplane 4');
subplot(3,4,9), imshow(logical(B5)); title('Bitplane 5');
subplot(3,4,10), imshow(logical(B6)); title('Bitplane 6');
subplot(3,4,11), imshow(logical(B7)); title('Bitplane 7');
subplot(3,4,12), imshow(logical(B8)); title('Bitplane 8');

