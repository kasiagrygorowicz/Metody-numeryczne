function max_absolute_row_index = find_max_row_index(A, column_index)
    max_absolute_row_index = column_index;

%     sprawdzamy wartosci we wszystkich rzędach dla danej kolumny, rząd =
%     columna bo macierz kwadrtowa
    for i =length(A):-1:column_index+1
        if (abs(A(max_absolute_row_index,column_index)) < abs(A(i, column_index))) 
            max_absolute_row_index = i;
        end
    end
end