function F = TwoDGaussian ( Xdata,Ydata,p )

X =  (Xdata-p(3))*cos(p(7))+(Ydata-p(4))*sin(p(7));
Y = -(Xdata-p(3))*sin(p(7))+(Ydata-p(4))*cos(p(7));

F=p(1)*exp(-(X.^2/(2*p(5)^2)+Y.^2/(2*p(6)^2)))+p(2);

end

