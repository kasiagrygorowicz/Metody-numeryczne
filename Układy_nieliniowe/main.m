clc;
clear;
close all;
f   = @(x) (0.1*x - x^3+sin(x^2)-5);
df = @(x)(1/10 - 3*x^2 + 2*x * cos(x^2));
a = -2;
b = 2;
x0=1.0;
x1=0.1;
x2=0.0;

figure();
fplot(f, "-", "DisplayName", "0.1*x - x^3+sin(x^2)-5");
grid on;
hold on;
xlabel("x");
ylabel("f(x)");
title('Wykres fuckji wyjściowej z jej pochodną z nałożeniem rozwiązań poszczególnych metod');
legend("Location", "best");
hold on;
fplot(df, "-", "DisplayName", "1/10 - 3*x^2 + 2*x*sin(x^2)");
[bisection_solution, bisection_error] = bisection_method(f, a, b, 1000, 10^-8);
[newton_x0, newton_x0_error] = Newton_Raphson_1(f, df, x0, 1e-8, 1000);
[newton_x1, newton_x1_error] = Newton_Raphson_1(f, df, x1,1e-8,1000);
[newton_x2, newton_x2_error] = Newton_Raphson_1(f, df, x2,1e-8,1000);
plot(bisection_solution, f(bisection_solution), "o", "DisplayName", "Wynik metody bisekcji");
hold on
plot(newton_x0, f(newton_x0), "o", "DisplayName", "Wynik metody Newtona-Raphsona dla x0 = 0.1");
plot(newton_x1, f(newton_x1), "o", "DisplayName", "Wynik metody Newtona-Raphsona dla x1 =");
plot(newton_x2, f(newton_x2), "o", "DisplayName", "Wynik metody Newtona-Raphsona"+x0);

figure()
semilogy(bisection_error,'o-', "DisplayName", "Błędy metody bisekcji");
hold on
semilogy(newton_x0_error,'o-', "DisplayName", "Błędy metody Newtona-Raphsona x0");
semilogy(newton_x1_error,'o-', "DisplayName", "Błędy metody Newtona-Raphsona x1");
semilogy(newton_x2_error,'o-', "DisplayName", "Błędy metody Newtona-Raphsona x2");
grid on;
xlabel('Liczba iteracji');
ylabel('Wartość błędu');
title('Wykres błędów kolejnych rozwiązań');
legend("Location", "best");

fprintf("rozwiazanie dla metody bisekcji wynosi x = %d błąd = %d dla %d iteracji\n",bisection_solution,bisection_error(length(bisection_error)),length(bisection_error));
fprintf("rozwiazanie dla metody Newtona-Raphsona dla x0 =1.0 wynosi x = %d błąd = %d dla %d iteracji\n",newton_x0,newton_x0_error(length(newton_x0_error)),length(newton_x0_error));
fprintf("rozwiazanie dla metody Newtona-Raphsona dla x0 =0.1 x = %d błąd = %d dla %d iteracji\n",newton_x1,newton_x1_error(length(newton_x1_error)),length(newton_x1_error));
fprintf("rozwiazanie dla metody Newtona-Raphsona dla x0 =0.0 x = %d błąd =  %d dla %d iteracji\n",newton_x2,newton_x2_error(length(newton_x2_error)),length(newton_x2_error));
legend("Location", "best");
