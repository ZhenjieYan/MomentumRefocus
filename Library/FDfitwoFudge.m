function [P,ffit,ErrorModelInfo]=FDfitwoFudge(k,f)
    FDfun=@(P,k) 1./(exp(P(2)*(k.^2/P(3)-1))+1);
    P0=[1,2,1];
    [P,R,J,CovB,MSE,ErrorModelInfo]=nlinfit(k,f,FDfun,P0);
    [ffit]=FDfun(P,k);
end