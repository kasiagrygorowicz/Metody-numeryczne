f = @(x) x^2;
integ_1(f, 0, 5, 1e6)

function p=integ_1(f, a, b, count)
    p = 0.0;
    size = 1/count;
    for i=a:size:(b-size)
        p = p + (f(i) + f(i+size)) * size / 2;
    end
end