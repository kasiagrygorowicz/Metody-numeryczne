function x0=Newton_Raphson_2(f, df, ddf, eps)
    x0 = 0.1;
    i = 0;
    while(abs(f(x0)) > eps)
        x1 = x0 - (f(x0) - sqrt(df(x0)^2 - 2*f(x0) * ddf(x0))) / ddf(x0);
        x2 = x0 - (f(x0) + sqrt(df(x0)^2 - 2*f(x0) * ddf(x0))) / ddf(x0);
        
        if(x1 <= x2)
            x0 = x1;
        else
            x0 = x2;
        end
        
        i = i+1;
    end
    i
end