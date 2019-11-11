q=0.1;
s=ones(1,10);
t=0:1:199;
x=square((2*pi/50)*t);
v=q*conv(s,x);
stem(v)
%%
n=0:14;
h=0.25*(0.75.^(n));
t=0:1:199;
x=square((2*pi/50)*t);
v1=q*conv(h,x);
figure
stem(v1)
%%
q1=0.2;
a=[1, -1];
h1=conv(a,a);
h1=conv(h1,a);
h1=conv(h1,a);
h1=conv(h1,a);
t=0:1:199;
x=square((2*pi/50)*t);
v2=q*conv(h1,x);
figure
stem(v2)
%%







