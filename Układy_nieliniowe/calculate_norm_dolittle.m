load blue.mat
[blue_L1,blue_L2]=calculate_norm_dolittle_(A,b);
disp(blue_L1);
disp(blue_L2);
load pink.mat
[pink_L1,pink_L2]=calculate_norm_dolittle_(A,b);
disp(pink_L1);
disp(pink_L2);
load orange.mat
[orange_L1,orange_L2]=calculate_norm_dolittle_(A,b);
disp(orange_L1);
disp(orange_L2);
function [L1,L2]= calculate_norm_dolittle_(A, b)
    [xs,U,L] =LU_decomposition(A,b);
    L1 = norm(A-L*U,2);
    L2 = norm(b-L*U*xs,2);
end