function [x0, err]=Newton_Raphson_1(f, df, x, eps, iter)
    x0 = x;
    i=1;
    err = zeros(1, iter);
    err(1) = abs(f(x0));
    while(abs(f(x0)) > eps) && (i <= iter)
        x0 = x0 - f(x0) / df(x0);
        err(i) = abs(f(x0));
        i = i+1;
    end
   err = err (1:i-1);
end