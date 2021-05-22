function results=gear_method2(h, x0, y0, x, f)
    n = length(x0:h:x);
    results = zeros(2,n);
    results(1,:)=x0:h:x;
    results(2,1) = y0;
    g =@(y)results(2,1)+h*y-y;
    results(2,2)=fzero(g,results(2,1));
     i = 3;
    while i<=n
        gear_function = @(y)(4*results(2,i-1)-results(2,i-2)+2*h*f(results(1,i),y))/3-y;
         results(2,i) = fzero(gear_function,results(2,i-1));
        i=i+1;
    end
end

    
    