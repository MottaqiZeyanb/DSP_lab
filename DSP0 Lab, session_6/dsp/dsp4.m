% A=imread('C:\Users\as\Desktop\DSP0 Lab\Images\lena.bmp');
% imshow(A);
% A1 = im2double(A);
% B=A1(:,:,1);
% figure
% imhist(B);
% A2 = histeq(B);
% figure
% imhist(A2);
% figure
% imshow(A2);
% figure
% imshow(B);
%%
A3 = imread('C:\Users\as\Desktop\DSP0 Lab\Images\Image02.jpg');
% N = imnoise(A3,'gaussian',0,0.01);
% % figure
% imshow(N);
% kernel=(1/9)* ones(3,3);
% mean_filter = imfilter(N,kernel);
% % figure
% imshow(mean_filter);
% 
% kernel1=(1/25)* ones(5,5);
% mean_filter1 = imfilter(N,kernel1);
% % figure
% imshow(mean_filter1);
% 
 N1 = imnoise(A3,'salt & pepper',0.1);
% figure
% imshow(N1);
% kernel2=(1/9)* ones(3,3);
% mean_filter2 = imfilter(N1,kernel2);
% figure
% imshow(mean_filter2);

%%
figure
imshow(N1);
y=median1(N1, [5,5]);
figure
imshow(y);




