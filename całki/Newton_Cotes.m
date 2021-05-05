
% fi - wektor wartości funckji całkowanej
% h - długość kroku całkowania

function result = Newton_Cotes (fi, h)
% liczba elemntów
    n = length(fi);
    
switch n
    case n == 1
        result = rectangle_rule(fi,h);
    case n == 2
        result = trapezoidal_rule_closed(fi, h);
    case n == 3
        result = simpson_rule_closed(fi,h);
    case n == 4
        result = simpson_38_rule_closed(fi,h);
    case n == 5
        result = boole_rule_closed(fi,h);
    otherwise
        result = NaN;
end

end


        
        
        
        
        
    