addpath('../Library');
%%
NK=4000;
k=linspace(0,sqrt(mu0)*4,NK);

%%
load('R16fit.mat');
kfitscaleR16=kfitscale;
fkR16=fk;
load('R10fit.mat');
kfitscaleR10=kfitscale;
fkR10=fk;
load('R16fitT020');
kfitscaleR16T020=kfitscale;
fkR16T020=fk;

%%
plot(k,fkR16,'b',k,fkR16T020,'r')