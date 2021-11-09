function output = newtonInterpolation(X,Y,R,k,x)
	output=Y(1);
	if k==1
		return;
	end
	for j = 1:k-1
		p=newtonPolynominal(X,j,x);
		output=output+R(j,1)*p;
	end
end
