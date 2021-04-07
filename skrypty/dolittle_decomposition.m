% na bazie wzorow w ksiazce
function [L, U] = dolittle_decomposition (A)
    n = length(A);
    U = zeros(n);
    L = diag(ones(1, n));
     U(1, :) = A(1, :);
     L(2:n, 1) = A(2:n, 1) ./ U(1,1);
%       max_column =find_max_column_index(U,1);
%       [A,U]= swap_columns(A,U,max_column,1);

    for k = 2:n
%         partial_pivoting
        
       for r = k:n
           sum_upper = 0;
           for j = 1:k-1
              sum_upper = L(k, j)*U(j, r)+sum_upper;
           end

           U(k, r) = A(k, r)- sum_upper;
       end

       for r = k:n
           sum_lower = 0;
           for j = 1:(k-1)
              sum_lower = L(r, j)*U(j, k) + sum_lower;
           end

           L(r, k) = (A(r, k) - sum_lower) / U(k, k);
       end
      
    end
end


