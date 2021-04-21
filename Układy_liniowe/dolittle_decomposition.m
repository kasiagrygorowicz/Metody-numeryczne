% na bazie wzorow w ksiazce
function [L, U] = dolittle_decomposition (A)
    n = length(A);
    U = zeros(n);
    L = diag(ones(1, n));
    for k = 1:n
        
       for r = k:n
           sum_upper = 0;
           for j = 1:k-1
              sum_upper = L(k, j)*U(j, r)+sum_upper;
           end
           U(k, r) = A(k, r)- sum_upper;
       end
%        PARTIAL PIVOTING
%       max_column =find_max_column_index(U,k);
%       [A,U]= swap_columns(A,U,max_column,k);
       for r = k+1:n
           sum_lower = 0;
           for j = 1:(k-1)
              sum_lower = L(r, j)*U(j, k) + sum_lower;
           end
           if U(k,k)==0
               disp(U);
               error("Dzielenie przez zero, napotkano element zrowy na diagonali macierzy");
           end
           L(r, k) = (A(r, k) - sum_lower) / U(k, k);
       end
     
    end
end


