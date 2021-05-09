clc;
clear;
close all;

f = @(x) sqrt(1 - x.^2);

limit = 1000;

T = table();
T.x = (3:2:limit)';
T.trapeze = zeros(limit/2-1, 1);
T.simpson = zeros(limit/2-1, 1);

for i=3:2:limit
    idx = (i-1)/2;
    x = linspace(0, 1, i);
    y = f(x);
    
    for k=1:i-1
        c = trapezoidal_rule_closed([y(k), y(k+1)], x(k+1)-x(k));
        T.trapeze(idx) = T.trapeze(idx) + c;
    end
    
    T.simpson(idx) = Newton_Cotes_composite(x, y, 0.01, 2);
end

err1 = pi - T.trapeze*4;
err2 = pi - T.simpson*4;
semilogy(T.x, err1);
hold on;
semilogy(T.x, err2);
legend('Trapeze', 'Simpson');
grid on;