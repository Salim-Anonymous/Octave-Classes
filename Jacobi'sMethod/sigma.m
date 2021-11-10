function result =sigma(row, j, n, A, x)
    result=0;
    for i=j:n
        if i~=row
            result=result+(A(row,i)*x(i));
        end
    end
end