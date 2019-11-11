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













    



