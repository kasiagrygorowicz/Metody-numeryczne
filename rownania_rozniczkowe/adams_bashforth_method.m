function y = adams_bashforth_method(xs,ys,f,h)
% rząd metody
m = length(xs)-1;
switch m
    case 0
        y = ys(1)+h*f(x(1),ys(1));
    case 1
        y = ys(2)+h*(-f(xs(1),ys(1))+3*f(xs(2),ys(2)))/2;
    case 2
        y = ys(3)+h*(5*(f(xs(1), ys(1)))-16*(f(xs(2), ys(2)))+23*(f(xs(3),ys(3))))/12;
    case 3
        y = ys(4)+h*(-9*(f(xs(1),ys(1)))+37*(f(xs(2), ys(2)))-59*(f(xs(3),ys(3)))+55*(f(xs(4),ys(4))))/24;
    case 4
        y = ys(5) + h*(251*(f(xs(1),ys(1)))-1274*(f(xs(2),ys(2)))+2616*(f(xs(3),ys(3)))-2774*(f(xs(4),ys(4)))+1901*(f(xs(5),ys(5))))/720;
    otherwise
        y = NaN;
end

end