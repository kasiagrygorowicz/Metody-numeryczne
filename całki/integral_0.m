f = @(x) x^2;
integ_0(f, 0, 5, 1e6)

function p=integ_0(f, a, b, count)
    p = 0.0;
    size = 1/count;
    for i=a:size:b
        p = p + size * f(i);
    end
end