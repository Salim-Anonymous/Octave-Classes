function [x] = checkUpperTriangularMatrix(A)
    for i=2:size(A,1)
        for j=1:i-1
            if (A(i,j)!=0)
                x=logical(false);
                return;
            else
                x=logical(true);
            end
        end
    end
end

