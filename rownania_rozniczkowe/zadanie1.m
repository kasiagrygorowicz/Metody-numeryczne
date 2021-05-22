% Konarski Jan, Grygorowicz Katarzyna
clc;
clear;

x0 = 0;
y0 = 1;
x = 5;
h = [0.05,0.07];


% Wynik analityczny
f = @(x,y) (-15*y);



for i = 1:length(h)
    xs =x0:h(i):x;
   
   ref = exp(-15*xs);
    results_e = heun_method( h(i), x0, y0, x,f);
    results_a = adams2( h(i), x0, y0, x,f);
    results_g = gear_method2( h(i), x0, y0, x,f);
    
% plot(xs, ra);
figure


plot(xs,ref);
hold on
plot(results_e(1,:), results_e(2,:));
plot(results_a(1,:), results_a(2,:));
plot(results_g(1,:), results_g(2,:));
  legend('rozwiazanie analityczne','metoda heuna','metoda adamsa','metoda geara');
  title("Przebieg rozwiazania rownania rozniczkowego dla kroku h="+h(i));
  
    

end