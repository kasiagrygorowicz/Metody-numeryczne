
function xs = gaussian_elimination(A, B)
% po kolumnach
     n = length(A);
     for i = 1:n-1
%          partial_pivoting -2 liniji
         max_row = find_max_row_index(A,i);
         [A,B] = swap_rows(A,B,max_row,i);
%          po rzedach
         for j = i+1:n
             d = A(j,i) / A(i,i);
%              po kolumnach
             for m = i:n
                A(j,m) =A(j,m) -  d * A(i,m);
             end
             B(j) = B(j) - d*B(i);
         end
     end
    xs =back_substitution(A,B);
end








