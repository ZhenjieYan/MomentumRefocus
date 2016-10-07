function [Out,Outerr] = FiniteD_edge( x,xstd,y,ystd,SD )
%FINITED Summary of this function goes here
%   Detailed explanation goes here

N=length(x);
Out=y*0;
Outerr=Out;
for i=1:N
    k1=max(1,i-SD);
    k2=min(N,i+SD);
    %Out(i)=(y(k2)-y(k1))/(x(k2)-x(k1));
    if (k2-k1)==SD*2
        k0=round((k1+k2)/2);
        X=[x(k1),x(k0),x(k2)];
        Y=[y(k1),y(k0),y(k2)];
        if sum(isnan(X))==0
            p=lagrangepoly(X,Y);
        else
            p=nan;
        end
        dp=polyder(p);
        Out(i)=polyval(dp,x(i));
    else
        %Out(i)=(y(k2)-y(k1))/(x(k2)-x(k1));
        if i-SD<1
            k1=1;
            k2=k1+2*SD;
        end
        if i+SD>N
            k2=N;
            k1=N-2*SD;
        end
        k1=max(1,k1);
        k2=min(N,k2);
        k0=round((k1+k2)/2);
        X=[x(k1),x(k0),x(k2)];
        Y=[y(k1),y(k0),y(k2)];
        if sum(isnan(X))==0
            p=lagrangepoly(X,Y);
        else
            p=nan;
        end
        dp=polyder(p);
        Out(i)=polyval(dp,x(i));
    end
    %Outerr(i)=sqrt(((ystd(k2)+ystd(k1))/(y(k2)-y(k1)))^2+((xstd(k2)+xstd(k1))/(x(k2)-x(k1)))^2)*Out(i);
    deltay=sqrt(ystd(k2)^2+ystd(k1)^2);
    deltax=sqrt(xstd(k2)^2+xstd(k1)^2);
    Outerr(i)=sqrt((deltay/(x(k2)-x(k1)))^2+(deltax*(y(k2)-y(k1))/(x(k2)-x(k1))^2)^2);
end
end


% 
% N=length(x);
% Out=y*0;
% Outerr=Out;
% for i=1:N
%     k1=max(1,i-SD);
%     k2=min(N,i+SD);
%     Out(i)=(y(k2)-y(k1))/(x(k2)-x(k1));
%     Outerr(i)=sqrt(((ystd(k2)-ystd(k1))/(y(k2)-y(k1)))^2+((xstd(k2)-xstd(k1))/(x(k2)-x(k1)))^2)*Out(i);
% end
% 
% end

%function [Out,Outerr] = FiniteD( x,xstd,y,ystd,SD )
%FINITED Summary of this function goes here
%   Detailed explanation goes here
% N=length(x);
% Out=y*0;
% Outerr=Out;
% for i=1:N
%     k1=max(1,i-SD);
%     k2=min(N,i+SD);
%     Out(i)=(y(k2)-y(k1))/(x(k2)-x(k1));
%     if k2-k1>1
%         k0=floor((k1+k2)/2);
%         X=[x(k1),x(k0),x(k2)];
%         Y=[y(k1),y(k0),y(k2)];
%         p=polyfit(X,Y,2);
%         dp=polyder(p);
%         Out(i)=polyval(dp,x(i));
%     else
%         Out(i)=(y(k2)-y(k1))/(x(k2)-x(k1));
%     end
%     Outerr(i)=sqrt(((ystd(k2)-ystd(k1))/(y(k2)-y(k1)))^2+((xstd(k2)-xstd(k1))/(x(k2)-x(k1)))^2)*Out(i);
% end
% 
% end