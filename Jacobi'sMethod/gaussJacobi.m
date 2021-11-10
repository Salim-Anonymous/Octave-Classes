function x=gaussJacobi(A, b, x_0, n, tol, max_iterations)
    k=1;
    x=zeros(1, n);
    while(k<=max_iterations)
        %set values of x approximation
        for i=1:n
            x(i)=(1/A(i, i))*(b(i)-sigma(i, 1, i-1, A, x)...
                -sigma(i, i+1, n, A, x_0));
        end
        %estimating the error for the loop termination
        if computeError(x, x_0, n)<=tol
            break;
        end
        k=k+1;
        %set previous estimate as current estimate and repeat
        for i=1:n
            x_0(i)=x(i);
        end
        k
    end
    disp('Max iterations exceeded');
end
