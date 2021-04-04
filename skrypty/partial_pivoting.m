function max_absolute_row_index = partial_pivoting(A, column_index)
    max_absolute_row_index = column_index;

%     sprawdzamy wartosci we wszystkich rzędach dla danej kolumny, rząd =
%     columna bo macierz kwadrtowa
    for i =length(A):-1:column_index+1
        if (abs(A(max_absolute_row_index,column_index)) < abs(A(i, column_index))) 
            max_absolute_row_index = i;
        end
    end
    
    if A(max_absolute_row_index,column_index) == 0
        print("Błąd! Układ osobliwy");
        exit
    end
end