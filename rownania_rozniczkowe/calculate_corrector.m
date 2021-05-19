function tmp = calculate_corrector(x0,y0,x1,y1,h,f)
    e = 10e-5;
    tmp = y1;
    y1 = y0;
    while abs(tmp-y1)>e
        y1 = tmp;
        tmp = y0 + h*(f(x0,y0)+f(x1,y1))/2;
    end
    
        
        
    