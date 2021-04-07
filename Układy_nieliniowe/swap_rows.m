function [A,B] = swap_rows(A, B, max_absolute_row, index)
    if max_absolute_row == index
        return
    end
    
    B([index,max_absolute_row]) = B([max_absolute_row,index]);
    A([max_absolute_row,index],:) = A ([index,max_absolute_row],:);   
end