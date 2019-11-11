% 
% close all
% N=2000;
% t=linspace(0, 2, N);
% y1=sin(2*pi*100*t);
% y2=chirp(t, 200, 2, 400);
% y3=zeros(1,N);
% y3(250)=50;
% 
% y = y1+y2+y3;
% 
% fft_Y =fft(y);
% plot(linspace(-pi, pi, length(fft_Y)), abs(fftshift(fft_Y))) 
% 
% L=256;
% w = hamming(L);
% figure
% spectrogram(fft_Y, w);
% 
% L=512;
% w = hamming(L);
% figure
% spectrogram(fft_Y, w);

%%
[X,XN]=wnoise(2, 10, 3.5);     % 2N grid of [0,1].
figure
subplot(3,2, 1)
plot(X)
subplot(3,2, 2)
plot(XN)
ylim([0,20])

[cA1,cD] = dwt(X,'db1')
subplot(3,2, 3)
plot(cA1)

[cA2,cD] = dwt(cA1,'db1')
subplot(3,2, 4)
plot(cA2)

[cA3,cD] = dwt(cA2,'db1')
subplot(3,2, 5)
plot(cA3)

[cA4,cD] = dwt(cA3,'db1')
subplot(3,2, 6)
plot(cA4)


