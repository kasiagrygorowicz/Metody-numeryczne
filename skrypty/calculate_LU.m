% UX=Y
function [L, U, B] = calculate_LU (A, B, withPivoting)
 n = length(A);
 L= diag(ones(n,1));
 
%  macierz górnotrójkątna
     for i = 1:n-1
         if withPivoting
             max_row = partial_pivoting(A,i);
             [A,B] = swap_rows(A,B,max_row,i);
         end
%          po rzedach
         for j = i+1:n
             d = A(j,i) / A(i,i);
             L(j,i) = d;
%              po kolumnach
             for m = i:n
                A(j,m) =A(j,m) -  d * A(i,m);
             end
             B(j) = B(j) - d*B(i);
         end
     end
     U =A;
end
