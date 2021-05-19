function results = euler_method (h, x0, y0, x, f)
    n = (x-x0)/h;
    results = zeros(2,n);
%         rząd 1 na x
    results(1,1) = x0;
%         rząd 2 na y
    results(2,1) = y0;
    i = 2;
    while x0 < x
        y0 = y0 + h*f(x0,y0);
        x0 = x0 + h;
        results(1,i) = x0;
        results(2,i) = y0;
        i = i + 1;
    end
end

        
        
        




