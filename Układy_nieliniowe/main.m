f   = @(x) (3.55*x^3 - 1.1*x^2 - 0.765*x + 0.74);
%Przebieg funkcji w podanej dziedzinie
x = linspace(-1, 1, 2000);
y = arrayfun(f, x);

subplot(2, 1, 1);
plot(x, y, "-", "DisplayName", "f(x) = 3.55*x^3 - 1.1*x^2 - 0.765*x + 0.74");
grid on;
hold on;
xlabel("x");
ylabel("f(x)");
legend("Location", "best");
[x0Bi, blledyBi] = bisection_method(f, -1, 1, 10000, 10^(-8));
plot(x0Bi, f(x0Bi), "o", "DisplayName", "Wynik metoda bisekcji");
%Wykres bledow
subplot(2, 1, 2);
hold on;
grid on;
semilogy(blledyBi, "DisplayName", "B??dy metody bisekcji");

legend("Location", "best");
