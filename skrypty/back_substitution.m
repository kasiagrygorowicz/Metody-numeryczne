function xs = back_substitution (A, B)
    n = length(A);    
    xs =zeros(n,1);
    for i = n:-1:1
        x = B(i)/A(i,i);
        for r = i-1:-1:1
            A(r,i)= A(r,i)*x;
            B(r) = B(r)-A(r,i);
        end
        xs(i)=x;
    end
end
