function[y]= median1(img, kernel)
[m, n, o]=size(img)
a = kernel(1);
b = kernel(2);
r=(a+1)/2;
c=(b+1)/2;
y=img;
for k=1:o
   for i=r:m-r
       for j=c:n-c
            temp=img(i-r+1:i+r-1, j-c+1:j+c-1, k);
%             median(temp(:))
            y(i, j, k) = median(temp(:));
       end        
   end
    
end
end
