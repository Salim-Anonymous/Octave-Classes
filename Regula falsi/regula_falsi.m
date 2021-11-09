function root = regula_falsi(func,a,b,p,N)

    n=0;% number of iterations
    c=0;% next point in iteration

    while n<=N
        n=n+1;%increase iteration count
        % while value of f(c)-f(a) is greater than precision we will loop
        % where a is the root so f(a)=0 hence we take abs(f(c))
        if func(c)==0||abs(func(c))<=p% if triggered solution is found
            root=c;
            break;
        endif
        % as we know  c = b - f(b)((b-a))/(f(b)-f(a))
        c=b-func(b)*(b-a)/(func(b)-func(a));
        % new interval switch
        if func(a)*func(c)<0
            b=c;
        elseif func(c)*func(b)<0
            a=c;
        endif
        printf("iterations-n %d ",n);
        printf("a=%.5f b=%.5f   ",a,b);
        printf("next point c=%.5f \n",c);
    endwhile
    root=c;
    printf("the root is %.5f\n",root);
endfunction

