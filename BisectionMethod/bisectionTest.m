f=@(n) cos(n)-n*e^n;
maxIteration = 100;
xLower = 0;
xUpper = 1;
errorTolerance = 0.01;
bisectionMethod(f,xLower,xUpper,errorTolerance,maxIteration)