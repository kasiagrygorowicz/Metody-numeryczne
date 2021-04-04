function xs = LU_decomposition(A,B,withPivoting)
[L, U, B] = calculate_LU(A,B,withPivoting);
%   LY = B
Y = forward_substitution(L,B);
%   UX = Y
xs = back_substitution(U,Y);  
disp(xs);
end
