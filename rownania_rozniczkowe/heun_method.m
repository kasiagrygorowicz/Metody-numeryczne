function results = heun_method (h, x0, y0, x, f)
   n = length(x0:h:x);
    results = zeros(2,n);
   i = 1;
    while i<=n+1
        results(1,i) = x0;
        results(2,i) = y0;  
        y0 = y0+h*(f(x0,y0)+f(x0+h,y0+h*f(x0,y0)))/2;
        x0 = x0+h;       
        i = i +1;
    end
end
