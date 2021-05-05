% d -mac rząd metody całkowania matody
function result = Newton_Cotes_composite(fi, h, d)
if d <=0 || d>= 5
    error('Zły rząd');
end

n = length(fi);
last = mod(n,(d+1));
n = n - last;
k = n/(d+1);
result =0;
for i=1:k
    result =result + Newton_Cotes(fi((i-1)*(d+1)+1:i*(d+1)),h);
    fprintf("%d\n",i);
end

if last ~= 0
    result = result + Newton_Cotes(fi(length(fi)-last+1:length(fi)),h);
end
end


    
    

    

