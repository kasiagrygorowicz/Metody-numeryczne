% Jan Konarski, Katarzyna Grygorowicz

Ns = 2:2:100;
counters = zeros(length(Ns),1);
for i=1:length(Ns)
    n=Ns(i);
    A=rand(n);
    b=rand(n,1);
    counters(i)=gaussian_elimination_c(A,b);
end
   
figure(1);
plot(Ns, counters);
xlabel('Wymiar macierzy');
ylabel('Ilość operacji');
 

function counter = gaussian_elimination_c(A, B)
% po kolumnach
     counter = 0;
     n = length(A);
     for i = 1:n-1
         max_row = find_max_row_index(A,i);
         [A,B] = swap_rows(A,B,max_row,i);
         if A(i,i) ==0
             error("Zero na diagonali A");
         end
%          po rzedach
         for j = i+1:n
             d = A(j,i) / A(i,i);
             counter=counter+1;
%              po kolumnach
             for m = i:n
                A(j,m) =A(j,m) -  d * A(i,m);
                counter=counter+2;
             end
             B(j) = B(j) - d*B(i);
             counter=counter+2;
         end
     end
%     xs =back_substitution(A,B);
end


    





