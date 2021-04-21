function solution = secant_method (f, a, b, epsilon)
    if f(a)*f(b) >= 0 
        error ("Błąd");
    end
    x1 = a;
    x2 = b;
    solution = (x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
    while abs(f(solution))>epsilon 
        solution = (x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
        x1 = x2;
        x2 = solution;
        if f(solution) == 0
            break;
        end
    end
        
end
