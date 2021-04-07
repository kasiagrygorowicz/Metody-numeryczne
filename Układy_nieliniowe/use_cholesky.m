function xs = use_cholesky(A,B)
L = cholesky_decomposition(A);
% LY=B
Y=forward_substitution(L,B);
% L.'X=Y
xs =back_substitution(L.',Y);
end