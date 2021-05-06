clc;
clear;
close all;

f = @(x) 11*x.^10;
a = -1;
b = 1;

T = zeros(4,1000);
for i=1:4
    for j=2:1000
        n = (i+1) * j+1;
        h = (b-a) / (n-1);
        T(i,j) = Newton_Cotes_composite(f(a:h:b), h, i);
    end
end
hold on
for i=1:4
   loglog([1:1000], abs(2-T(i,:))); 
end
legend('1 rząd', '2 rząd', '3 rząd', '4 rząd');
