function max_absolute_column = find_max_column_index(A,row_index)
      max_absolute_column = row_index;
     
     for i =row_index+1:length(A)
         if (abs(A(row_index,max_absolute_column)) < abs(A(row_index,i))) 
            max_absolute_column = i;
        end
     end
     
     if A(row_index,max_absolute_column)==0
         fprintf("%d %d",row_index,max_absolute_column);
         error("element zerowy");
     end
     
end
