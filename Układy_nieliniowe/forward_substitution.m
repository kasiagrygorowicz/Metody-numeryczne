function xs = forward_substitution (A, B)
    n = length(A);    
    xs =zeros(n,1);
     for i = 1:n
        x = B(i)/A(i,i);
         for r = 1:n
             A(r,i)= A(r,i)*x;
             B(r) = B(r)-A(r,i);
        end
         xs(i)=x;
     end
end




