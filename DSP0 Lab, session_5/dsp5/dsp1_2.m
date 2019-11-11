
clear
close all
tf=0:1/(2*pi):100;
p=cos(pi*pi/8*tf)+ cos(5*pi*pi/8*tf)+ cos(9*pi*pi/8*tf)+ cos(13*pi*pi/8*tf);

figure

NFFT = 512; % Next power of 2 from length of y
Y = fftshift(fft(p,NFFT));
f = linspace(-pi,pi,NFFT);

% Plot single-sided amplitude spectrum.
plot(f,abs(Y)) 

figure
fft_x = fft(p, 512);
X = fftshift(fft_x);
v=linspace(-pi,pi,length(X));
plot(v, abs(X),'linewidth',4)   %%%%%%%%%%%%%1-9-a
hold on

G = xlsread('filters.xls',1);
Z = xlsread('filters.xls',2);
coef=[2 0 1 0.5];

for n=1:4
  E1(n,:) = filter(G(n,:),1, p);
  E2(n,:) = upsample(E1(n,:),4);
  E2(n,:) = E2(n,:)*coef(n);
  E3(n,:) = filter(Z(n,:),1, E2(n,:));
  E4(n,:) = downsample(E3(n,:),4);
end

S=sum(E4);
X1 = fftshift(fft(S, 512));
v1=linspace(-pi,pi,length(X1));
plot(v1, abs(X1),'g') 
