clc;
clear;
close all;

f = @(t, y) [y(2) -y(1)];

h = 0.01;
t0 = 0;
y0 = [1, 0];
tN = 6;

res = euler_method3(h, t0, y0, tN, f);

plot(res(1,:), res(2,:))