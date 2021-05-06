% d -mac rząd metody całkowania matody
function result = Newton_Cotes_composite(fi, h, d)
if d <=0 || d>= 5
    error('Zły rząd');
end
n = length(fi);
k = ceil(n/d);
result =0;
for i=1:k
    s=(i-1)*(d+1)-i+2;
    e=i*(d+1)-i+1;
    if s >= n
        return
    end
    if e > n
        e = n;
    end
    result =result + Newton_Cotes(fi(s:e),h);
end
end



    
    

    

