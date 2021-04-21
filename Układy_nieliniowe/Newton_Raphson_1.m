function x0=Newton_Raphson_1(f, df, eps)
    x0 = 0.1;
    i=1;
    while(abs(f(x0)) > eps)
        x0 = x0 - f(x0) / df(x0);
        i = i+1;
    end
    i
end