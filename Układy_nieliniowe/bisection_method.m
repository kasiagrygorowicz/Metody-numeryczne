% f -funckja
% <a,b> - przedział izolacji pierwiastka
% iterations - maksymalna liczba iteracji
function [solution, errors] = bisection_method(f,a,b,iterations, epsilon)
    if (f(a)*f(b) >= 0)
        error("Złe załozone wartości rozwiazania");
    end
    
    errors = zeros(1,iterations);
    i = 1;
    solution = (a+b)/2;
    errors(1) = abs(f(solution));
    while ( i <= iterations && abs(f(solution)) > epsilon)
        solution = (a+b)/2;
        if f(solution)*f(a) < 0
            b = solution;
        else
            a = solution;
        end
        errors(i) = abs(f(solution));
        i=i+1;
    end
    errors = errors (1:i-1);
    if i==1 
        solution =a;
    end
    
end

        
    
  
    
