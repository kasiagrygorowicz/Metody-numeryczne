% Crout-Dolittle method
function [xs,U,L] = LU_decomposition(A,B)
[L, U] = dolittle_decomposition(A);
%   LY = B
Y = forward_substitution(L,B);
%   UX = Y
xs = back_substitution(U,Y);  
end
