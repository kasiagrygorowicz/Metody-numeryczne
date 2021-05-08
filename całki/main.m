f = @(x) 11*x.^10;
xs = linspace(-1,1,201);
ys = f(xs);

degrees = [1,2,3,4];
results =zeros(1,4);
for i = degrees
    results(i) = Newton_Cotes_composite(xs,ys,0.01, i);
end

for i=1:length(results)
    fprintf("Wynika dla rzędu %d wynosi %.12f\n",i,results(i));
end


% f = @(x) -1/12*x.^3;
% g = @(x) -1/90*x.^5;
% h = @(x) x.^7;
% x=0.00001:0.001:1;
% plot(x,f(x));
% hold on
% plot(x,g(x));

f= @(x) x.^6 + x.^4 + x.^2 + x + 10;
x =0.00001:0.001:3.1773;
plot(x,f(x));