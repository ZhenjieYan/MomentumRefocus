function [P,ffit,ErrorModelInfo]=FDfitwoFudge(k,f)
    FDfun=@(P,k) 1./(exp(P(1)*(k.^2/P(2)-1))+1);
    P0=[2,1];
    [P,R,J,CovB,MSE,ErrorModelInfo]=nlinfit(k,f,FDfun,P0);
    [ffit]=FDfun(P,k);
end