% bisectionMethod function Inputs:
% yourFunction: an equation you would like to test
% xLower: a lower guess of what the midpoint might be
% xUpper: a higher guess of what the midpoint might be
% errorTolerance: how close you would like the answer to be
% maxIteration: the max number of times this should loop

function x = bisectionMethod(yourFunction, xLower, xUpper, errorTolerance, maxIteration)

    % if only 3 inputs are called sets the default iterations to 10
    if nargin == 4
        maxIteration = 10;
    end
    
    % initiallizes several variables to be used later
    xMiddleOld = xLower;
    percentError = 1;
    k = 1;
    
    
    % creates a while loop to continue calculating until the errorTolerance % is reached or it has done the maxIterations
    while percentError > errorTolerance && k < maxIteration
        k = k+1;
        xMiddle = 0.5 * (xLower + xUpper);
        yLower = yourFunction(xLower);
        yMiddle = yourFunction(xMiddle);
    
        percentError = abs((xMiddle - xMiddleOld)/xMiddle) * 100;
    
        xMiddleOld = xMiddle;
    
        if yMiddle < 0 && yLower < 0 || yMiddle > 0 && yLower > 0
            xLower = xMiddle;
        else 
            xUpper = xMiddle;
        end
        x = xMiddle;
        printf("no. of iteration=%d ",k)
        printf("root = %.5f   ",xMiddle)
        printf("value of function =%.5f\n",yourFunction(x))
    end
end