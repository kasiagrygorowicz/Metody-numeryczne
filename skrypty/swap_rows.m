function [A,B] = swap_rows(A, B, max_absolute_row, index)
    if max_absolute_row == 1
        return
    end
    tmpA = A(index,:);
    tmpB = B(index);
    A(index,:) = A (max_absolute_row,:);
    B(index) = B(max_absolute_row);
    A(max_absolute_row,:) = tmpA;
    B(max_absolute_row) = tmpB;
    
end