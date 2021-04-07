M = [1 2 1 3; 1 5 4 6; 4 8 7 9];
gj(M)
fprintf('Function should return [0, 2, -1] \n');

function [W]=gj(M)
    n = length(M);
    for i=1:n-1
        row = M(i,:);
        row = row / row(i);
        M(i,:) = row;
        for k=1:n-1
            if i~=k
                M(k,:) = row * (-1 * M(k, i)) + M(k,:);
            end
        end
    end
    W = M(:, n)';
end