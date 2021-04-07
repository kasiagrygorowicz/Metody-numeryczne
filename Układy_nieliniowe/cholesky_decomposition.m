function [L] = cholesky_decomposition(A)
n = length(A);
L= zeros(n);

% L
for k =1:n
    for i=1:k
        sum =0;
        if k==i
            for j=1:k-1
                sum = sum +L(k,j).^2;
            end
            L(k,k) = sqrt(A(k,k)-sum);
            
        else
            for j=1:i-1
                sum = L(i,j)*L(k,j);
            end
            L(k,i)=(A(k,i)-sum)/L(i,i);
        end
        
    end
   
end


    
    
          
            



end