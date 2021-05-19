clc;
clear;

dxdt = @(x, y, t) (y);
dydt = @(x, y, t) (-x);

x0 = 0;
y0 = 1;
t0 = 0;
t_max = 10;
h = [0.1; 0.01; 0.001];

% Wynik analityczny
f = @(t) (sin(t));


for i = 1:length(h)
    t = t0:h(i):t_max;
    x = arrayfun(f, t);
    xs =x0:h(i):t_max;

    
    results_e = euler_method2( h(i), x0, y0, t0,t_max,dxdt, dydt);
    results_h = heun_method2(h(i), x0, y0, t0,t_max,dxdt, dydt);

%     errors_e = abs(x - results_e(1, :));
%     max_err_e = max(errors_e);
%     
%     errors_h = abs(x - results_h(1, :));
%     max_err_h = max(results_h);
    
   figure
    plot(t, x, '-', 'DisplayName','Wynik analityczny');
    hold on;
    plot(xs, results_e(2, :), 'x', 'DisplayName','Rozwiazania metoda Eulera');
    plot(xs, results_h(2, :), 'o', 'DisplayName','Rozwiazania metoda Heuna');
  
    

end



