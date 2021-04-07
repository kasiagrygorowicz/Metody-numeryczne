% Crout-Dolittle method
function xs = LU_decomposition(A,B)
[L, U] = dolittle_decomposition(A);
%   LY = B
Y = forward_substitution(L,B);
%   UX = Y
xs = back_substitution(U,Y);  
disp(xs);
end
