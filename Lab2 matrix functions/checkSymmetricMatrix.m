function [x]=checkSymmetric(A)
    for i=1:rows(A)
        for j=1:columns(A)
            if(A(i,j)!=A(j,i))
                disp("not a symmertic matrix")
                x=logical(false);
                return
            end
        end
    end
    disp("It is symmertic matrix")
    x=logical(true);
end
