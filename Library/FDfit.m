function [P,ffit,ErrorModelInfo]=FDfit(k,f)
    FDfun=@(P,k) P(1)*1./(exp(P(2)*(k.^2/P(3)-1))+1);
    P0=[1,4,1];
    [P,R,J,CovB,MSE,ErrorModelInfo]=nlinfit(k,f,FDfun,P0);
    [ffit]=FDfun(P,k);
end