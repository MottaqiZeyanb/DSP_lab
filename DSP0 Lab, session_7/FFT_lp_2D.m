function [y1] = FFT_lp_2D(x1,x2)
y=fft2(x1);
z=fftshift(y);
y1=z;
[lx,ly]=size(z);
AY=linspace(-pi,pi,ly);
Ax=linspace(-pi,pi,lx);
     for i=1:lx
         for j=1:ly
             if((Ax(i)^2+ AY(j)^2)> x2^2)
                 y1(i,j)=0;
             end
         end
     end
end
