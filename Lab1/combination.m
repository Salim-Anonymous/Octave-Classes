function [y] = combination(n,r)
    %to find the combination
    y = factorial(n)/(factorial(r)*factorial(n-r));
end