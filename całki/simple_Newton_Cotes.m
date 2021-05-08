
% fi - wektor wartości funckji całkowanej
% h - długość kroku całkowania

function result = simple_Newton_Cotes (fi, x)
% degree to liczba h
h = x(2)-x(1);
degree = length(fi)-1;
 
switch degree
    case 0
        result = rectangle_rule(fi,h);
    case 1
        result = trapezoidal_rule_closed(fi, h);
    case 2
        result = simpson_rule_closed(fi,h);
    case 3
        result = simpson_38_rule_closed(fi,h);
    case 4
        result = boole_rule_closed(fi,h);
    otherwise
        result = NaN;
end

end


        
        
        
        
        
    