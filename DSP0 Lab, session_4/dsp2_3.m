M = 100;
n=0:1:M;
s=sin(0.2*pi*n);
v=sin(0.05*pi*n) + sin(0.35*pi*n);
x=s+v;
figure
stem(s)
hold on
stem(x)
%%
w=0.54-(0.46*sin((2*pi*n)/M));
h=w.*(0.25*sinc(0.25*(n-M/2))-(0.15*sinc(0.15*(n-M/2))));
y=filter(h,1,x);
figure
plot(s)
hold on 
plot(y,'r')
%%



