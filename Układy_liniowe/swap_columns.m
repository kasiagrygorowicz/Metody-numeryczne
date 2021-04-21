function [A,U] = swap_columns(A, U, max_absolute_column, index)
    if max_absolute_column == index
        return
    end
    
   U(:,[index,max_absolute_column])=U(:,[max_absolute_column,index]);
   A(:,[max_absolute_column,index])= A(:,[index,max_absolute_column]);
   
    
    
   