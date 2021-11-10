function error=computeError(x_1, x_2, n)
    error=0;
    for i=1:n
        if(abs(x_1(i)-x_2(i))>error)
            error=abs(x_1(i)-x_2(i));
        end
    end
end