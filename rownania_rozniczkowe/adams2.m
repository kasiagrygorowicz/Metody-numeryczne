function results = adams2(h, x0, y0, x, f)
    n = length(x0:h:x);
    results = zeros(2,n);
    results(1,:)=x0:h:x;
    results(2,1)=y0;
    results(2,2)=results(2,1)+h*f(x0,results(2,1));
     i = 3;
    while i<=n
        y0 = results(2,i-1)+h*(-f(results(1,i-2),results(2,i-2))+3*(f(results(1,i-1),results(2,i-1))))/2;
        results(2,i) = y0;
        
         i = i + 1;
    end
