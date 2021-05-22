function results = euler_method3 (h, x0, y0, x, f)
    n = (x-x0)/h;
    results = zeros(2,n);
    i = 1;
    while i<=n+1
        results(1,i) = x0;
        results(2,i) = y0(2);
        y0 = y0 + h*f(x0,y0);
        x0 = x0 + h;
        
        i = i + 1;
    end
end