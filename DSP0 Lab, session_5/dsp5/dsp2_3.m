% M = 300;
% n=0:1:M;
% s=sin(0.2*pi*n);
% v=sin(0.05*pi*n) + sin(0.35*pi*n);
% x=s+v;
% figure
% stem(s)
% hold on
% stem(x)
% %%
% w=0.54-(0.46*sin((2*pi*n)/M));
% h=w.*(0.25*sinc(0.25*(n-M/2))-(0.15*sinc(0.15*(n-M/2))));
% y=filter(h,1,x);
% figure
% plot(s)
% hold on 
% plot(y,'r')
% %%
% load('C:\Users\as\Desktop\FDATOOL.mat')
% y1=filter(Num,1,x);
% figure
% plot(s)
% hold on 
% plot(y1,'g')
%%
% clear
% clc
% [y2, FS]=audioread('C:\Users\as\Desktop\Audio01.wav');
% % sound(5*y2, FS)
% load('C:\Users\as\Desktop\DSP0 Lab\FILTER_1.mat')
% y3=filter(Num1,1,y2);
% n=0:1:length(y3)-1;
% C=2*cos(((2*pi*10000)/FS)*n);
% y4=y3.*C';  
% y5=filter(Num1,1,y4);
% % sound(5*y5, FS)
% %%% Recovery
% n1=0:1:length(y5)-1;
% C1=2*cos(((2*pi*10000)/FS)*n1);
% y6=y5.*C';  %% transpose
% y7=filter(Num1,1,y6);
% sound(5*y7, FS) 

%%











