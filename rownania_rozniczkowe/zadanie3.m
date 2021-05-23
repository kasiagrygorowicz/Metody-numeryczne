clc;
clear;
close all;

f = @(t) cos(t + pi/2);
ff = @(t) -cos(t);

h = 0.005;
t0 = 0;
tN = 10;

x = t0:h:tN;

y1 = euler(h, x, f);
y2 = ff(x);

err = zeros(length(x));
for i=1:length(err)
    for j=1:i
        err(i) = err(i) + (y2(j) - y1(j))^2;
    end
    err(i) = sqrt(err(i));
end

plot(x, err);

function y = euler(h, x, f)
    y = zeros(length(x));
    y(1) = -1;
    for i=2:length(x)
        y(i) = y(i-1) - h * f(x(i));
    end
end