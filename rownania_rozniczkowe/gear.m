function y=gear(f, h, xs, ys)
    if length(xs) < 6
        steps = length(xs);
    else
        steps = 5;
    end
    switch(steps)
        case 0
            alpha = [1];
            beta = 1;
        case 1
            alpha = [4/3, -1/3];
            beta = 2/3;
        case 2
            alpha = [1, -9/11, 2/11];
            beta = 6/11;
        case 3
            alpha = [48/25, -36/25, 16/25, -3/26];
            beta = 12/25;
        case 4
            alpha = [300/137, -300/137, 200/137, 75/137, 12/137];
            beta = 60/137;
        case 5
            alpha = [360/147, -450/147, 400/147, -225/147, 72/147, -10/147];
            beta = 60/147;
    end
    res = 0;
    p = ys(steps+1);
    for i=1:steps
        for k=1:steps
            res = res + alpha(k+1) * ys(steps-1);
        end
        res = res + h * beta * f(xs(steps+1), p);
        p = res;
    end
    y = res;
end