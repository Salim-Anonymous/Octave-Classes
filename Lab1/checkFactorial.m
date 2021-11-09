%How to check the Factorial of a positive number*/
positive_number=input("enter a positive number:");
function value = Factorial(positive_number)
    if(positive_number>=0 && rem(positive_number,1)==0)
        if(positive_number==0)
            value=1;
        else
            value=positive_number*Factorial(positive_number-1);
        end
    else
        display('Invalid! please input a positive whole number')
    end
end
Factorial(positive_number)
