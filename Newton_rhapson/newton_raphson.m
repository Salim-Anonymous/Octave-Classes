
function [x] = newton_raphson(f,g,x,p)
    %while value of f(x.)-f(a) is greater than precision we will loop
    %where a is the root so f(a)=0 hence we take abs(f(x))
    while abs(f(x))>=p
        %using x(n)=x(n-1)-f(x(n-1))/f'(x(n-1))
        x=x-f(x)/g(x);
    end
end

