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
% A3 = imread('C:\Users\as\Desktop\DSP0 Lab\Images\Image02.jpg');
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
% N1 = imnoise(A3,'salt & pepper',0.1);
% figure
% imshow(N1);
% kernel2=(1/9)* ones(3,3);
% mean_filter2 = imfilter(N1,kernel2);
% figure
% imshow(mean_filter2);

%%
% figure
% imshow(N1);
% y=median1(A3, [3,3]);
% figure
% imshow(y);
%%
% figure
% N2 = imnoise(y,'salt & pepper',0.1);
% imshow(N2);
%%
clear
A4 = rgb2gray(imread('C:\Users\as\Desktop\DSP0 Lab\Images\Image03.jpg'));
A4 = im2double(A4);
% [cA1,cH,cV,cD] = dwt2(A4,'db1');
% imshow(cA1)
% figure
% imshow(cH)
% figure
% imshow(cV)
% figure
% imshow(cD)
% 
% c=length(A4(:,1));
% 
% for i=1:c
%   [cA(i,:),cD(i,:)] = dwt(A4(i,:),'db1');  
% end
% d=length(cA(1,:));
% % imshow(cA2)
% % figure
% % imshow(cD)
% 
% for j=1:d
%   [cAA(:,j),cAD(:,j)] = dwt(cA(:,j),'db1');  
% end
% figure
% imshow(cAA)
% 
% for j=1:d
%   [cDA(:,j),cDD(:,j)] = dwt(cD(:,j),'db1');  
% end
% figure
% imshow(cDA)
% figure
% imshow(cAD)
% figure
% imshow(cDD)
%%
clear
A5 = imread('C:\Users\as\Desktop\DSP0 Lab\Images\Image04.png');
A5 = im2double(A5);
figure
imshow(A5);
N=fspecial('motion',15,20);
% y=median1(A5, [3,3]);
blured = imfilter(A5, N, 'replicate');
figure
imshow(blured);
deblur = deconvwnr(blured,N,0.009);
figure
imshow(deblur);
%%
A6 = imread('C:\Users\as\Desktop\DSP0 Lab\Images\glass.tif');
A6 = im2double(A6);
Y = fft2(A6);

imshow(Y);
Z = fftshift(Y);
figure
imshow(Z);
h=FFT_lp_2D(A6,0.3*pi);
%figure
%imshow(h);
pop=ifft2(ifftshift(h));
figure
imshow(pop);



















