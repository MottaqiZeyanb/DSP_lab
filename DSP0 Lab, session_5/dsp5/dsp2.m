%% Experiment_2

function[y] = myconv(h,x)
if length(h)< length(x)
    a=h;
    b=x;
else
    a=x;
    b=h;

a=fliper(a);
    
 for i=1:length(h)+length(x)-1
  if n<length(a)
      y(n) = sum(a(length(a)-n+1:end).* b(1:n));
  elseif  length(a)<=n && n<length(b)
      y(n) = sum(a(length(a)-n+1:end).* b(n-length(a):));
  else
      
 end
 end

