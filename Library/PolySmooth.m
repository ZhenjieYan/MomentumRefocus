function Ysmoothed = PolySmooth( Y,X,points,order)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Ysmoothed=Y;
N=length(Ysmoothed);
for i=1:N
    k1=max(1,i-points);
    k2=min(N,i+points);
    Yfit=Y(k1:k2);Xfit=X(k1:k2);
    p=polyfit(Xfit,Yfit,order);
    Ysmoothed(i)=polyval(p,X(i));
end

end

