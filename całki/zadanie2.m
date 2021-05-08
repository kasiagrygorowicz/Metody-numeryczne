clc;
clear;
close all;

f = @(x, y) (x.^2 + y.^2) * pi;
a = 0;
b = 1;

T = zeros(2, 500);
for i=2:3
    for j=1:2:1000
        n = (i+1) * j+1;
        h = (b-a) / (n-1);
        T(i-1,ceil(j/2)) = Newton_Cotes_composite(f(a:h:b, a:h:b), h, i);
    end
end

hold on
for i=1:2
   loglog([1:2:1000]', T(i,:)); 
end
legend('2 rzędu', '3 rzędu');
hold off
