t=0:0.01:2;
y=5*sin(2*pi*t);
figure
stem(t,y)
figure
plot(t,y)
title('Sine Wave');
ylabel('y=5*sin(2*pi*t)');
xlabel('t');
%%
[m,n]=size(y);
z=rand(m,n)-0.5;
w=z+y;
subplot(2,1,1);
plot(t,y)
subplot(2,1,2);
plot(t,w)
%%
q=1/21;
s=ones(1,21);

v=q*conv(s,w);
t1=-0.2:0.01:2;
plot(t1,v)
%%
q1=1/21;
s1=ones(1,21);
v1=filter(q1*s1,1,w);
figure
plot(t,v1)
%% function
%%
t2=0:0.01:4;
ts=t2(1:20:end);
r=cos(2*pi*t2)+ cos(8*pi*t2)+ cos(12*pi*t2);
rs=r(1:20:end);
figure
plot(t2,r)
hold on
plot(ts,rs,'O')
Ts=0.2;
h=zeros(length(rs),length(r));
for i=1:length(rs)
    h(i,:)=sinc((t2-(ts(i)))/Ts);
end
g=rs*h;
hold on
plot(t2,g,'x')
%%
tr=-5:0.01:5;
u=sinc(5*tr).*sinc(5*tr);
figure
N=128;
w1=linspace(-4*pi,4*pi,N);
H=freqz(u,1,w1);
subplot(2,1,1);
plot(w1/pi,abs(H))

fs=10;
k=1/fs;
tr=-5:k:5;
u1=sinc(5*tr).*sinc(5*tr);
N=128;
w1=linspace(-4*pi,4*pi,N);
H=freqz(u1,1,w1);
subplot(2,1,2);
plot(w1/pi,abs(H))
%%
N = 256;
t8=linspace(-5,5,256);
u2=sinc(2*t8);
figure
subplot(2,1,1);
plot(t8,u2,'x')

t9=linspace(-5,5,N*3);
u3=zeros(1,3*N);
u3(1:3:3*N)=u2;
subplot(2,1,2);
plot(t9,u3,'o')

w2=linspace(-0.99*pi,0.99*pi,N);
H1=freqz(u2,1,w2);
H2=20*log10(abs(H1/max(norm(H1))));
figure
plot(w2/pi,H2,'b.-') %% MAIN SIGNAL

w3=linspace(-pi,pi,N);
H3=freqz(u3,1,w3);
H3=20*log10(abs(H3/max(norm(H3))));
hold on
plot(w3/pi,H3,'r.-')

Ts1=t9(2)-t9(1);
h1=zeros(length(u3),length(u3));
for i=1:length(u3)
    h1(i,:)=sinc((t9-(t9(i)))/(3*Ts1));
end
g1=u3*h1;
hold on
figure
plot(t9,g1,'o')
hold on
%plot(t8,u2,'x')        %% Nerkhe 3

t10=linspace(-5,5,3*N/2); %% Nerkhe 3/2
u4=zeros(1,3*N/2);
u4=g1(1:2:end);
plot(t10,u4,'x')

%%




