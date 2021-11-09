function p = newtonPolynomial(X,k,x)
    p=1
    if k==0
        return;        
    end
    for i = 1:k
        p = p*(x-X(i));
    end
end
