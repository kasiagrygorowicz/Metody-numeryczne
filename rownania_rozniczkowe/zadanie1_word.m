f = @(x, y) -2*pi * exp(-x) * sin(2*(pi)*x) - y;

x0 = 0;
y0 = 1;
x_end = 10;
h = 0.001;
xs = x0:h:x_end;
re = euler_method( h, x0, y0, x_end,f);
rh = heun_method(h, x0, y0, x_end,f);


f_analitycznie = @(x) exp(-x) .* cos(2 * pi * x);
ra = f_analitycznie(xs);

err_e = abs(re(2,:) - ra);
err_h = abs(rh(2,:) - ra);
plot(xs, ra);
title("Przebieg rozwiazania rownania rozniczkowego");
hold on
plot(xs, re(2,:), 'x');
plot(xs, rh(2,:), '+');
legend('rozwiazanie analityczne','metoda eulera','metod heuna');


figure
plot(xs, err_e)
title('Bład bezwzledny');
hold on 
plot(xs, err_h)
legend('metoda eulera','metoda heuna');
%%
max_e = max(err_e);
max_h = max(err_h);
