%ragula falsi method

% sample input : regula_falsi(inline('3*x+sin(x)-exp(x)'),0,0.5,1e-15,500)
% sample output: 0.36042
% a->lower point
% b->upper point
% p->precision
% N-> max no of terations

func = @(n) 3*n+sin(n)-e^n;
disp("--------------------------regula_falsi---------------------------------")
disp("The function expression is ")
disp(func)

a=0
b=0.5
p=10^-15
N=500
regula_falsi(func,a,b,p,N);