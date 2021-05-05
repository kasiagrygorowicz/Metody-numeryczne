f = @(x) 11*x.^10;
xs = linspace(-1,1,201);
ys = f(xs);

degrees = [1,2,3,4];
results =zeros(1,4);
for i = degrees
    results(i) = Newton_Cotes_composite(ys,0.01, i);
end

for i=1:length(results)
    fprintf("Wynika dla rzędu %d wynosi %d\n",i,results(i));
end

    
