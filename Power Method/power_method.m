function output = power_method(A)
%myFun - Description
%
% Syntax: output    = power_method(A)
%
% Long description
    s=size(A,1);
    res = 0.001;
    x = ones(size(A,1),1);

    ite = 0;
    lambda = 0;

    while res < abs(norm(A*x-lambda*x))
        ite = ite +1
        y = A*x
        x = y;
        maxi = max(x);
        lambda = maxi
        x = x/maxi
    end
    output = lambda
end
