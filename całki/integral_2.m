f = @(x) x^2;
integ_2(f, 0, 5)

function p=integ_2(f, a, b)
    m = (a + b) / 2;
    h = m - a;
    p = (h/3) * (f(a) + 4*f(m) + f(b));
end