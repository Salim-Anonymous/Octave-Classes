%Newton Raphson method
%sample input : newton_raphson(inline('x-tan(x)'),inline('1-(sec(x))^2'),1.5,1e-10)
    %sample output: 5.5719e-04
    %f-> function
    %g->derivative if f(x)
    %x->initial root
    %p-.precision
    p=10^-10
    x=1.5
    f=@(x) x-tan(x);
    disp("the function f is:")
    disp(f)
    g=@(x) 1-(sec(x))^2;
    disp("the derivative if f(x)=g(x)=")
    disp(g)

newton_raphson(f,g,x,p);