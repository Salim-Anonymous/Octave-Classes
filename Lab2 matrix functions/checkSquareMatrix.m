function [x] = checkSquareMatrix(A)
    [nr,nc]=size(A);
    if(nr==nc)
        disp("Square matrix")
        x=logical(true);
    else
        disp("Not a square matrix")
        x=logical(false);
    end
end
