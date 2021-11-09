function out = lagrange_interpolation(X,Y,k,z)
    out=0;
    for i=1:k
        % using formula f(z)=Sum of [y(i)* Product of [(z-x(j))/(x(i)-x(j))] where j~= i]
        p=1;
        for j=1:k
            if(j!=i)
                p=p*(z-X(j))/(X(i)-X(j));
            end
        end
        out=out+(p*Y(i));
    end
end
