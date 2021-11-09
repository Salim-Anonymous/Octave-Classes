function [x] = checkDiagonal(A)
    for i=1:rows(A)
        for j=1:columns(A)
            if(i!=j&&A(i,j)!=0)
                disp("this is not a diagonal matrix")
                x=logical(false);
                return
            endif
        endfor
    endfor
    disp("This is a diagonal matrix")
    x=logical(true);
endfunction
