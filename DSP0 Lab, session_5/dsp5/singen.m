function[y] = singen(w,n)
  b=[0,sin(w)];
  a=[1,-2*cos(w),1];
  x=zeros(n,1);
  x(1)=1;
y=filter(b,a,x);
end
