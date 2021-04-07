function [L,U] = crout_decomposition(A)
    n = length(A);
    L = zeros(n);
    U = diag(ones(1, n));
    disp(U);
    disp(L);
for k=1:n
    for i=k:n
        sum=0;
        for j=1:k-1
            sum =sum + L(i,j)*U(j,k);
        end
        L(i,k) = A(i,k)-sum;
    end

    for i=k+1:n
        sum =0;
        for j=1:k-1
            sum =sum+L(k,j)*U(j,i);
        end
        U(k,i)= (A(k,i)-sum)/L(k,k);
    end
end

end
