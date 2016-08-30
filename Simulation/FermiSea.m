addpath('../Library');
mu0=1;
z=16;
V=@(r,z) (r.^z).*(r>-1);
fk_local=@(k,mu,t) 1./(exp((1/t)*(k.^2-mu))+1);
T_mu=0.20;
%%
NK=4000;
k=linspace(0,sqrt(mu0)*4,NK);
r=linspace(0,3,1000);
mu_local=mu0-V(r,z);
t=T_mu*mu0;
%% get n(0) and EF(0)
k_int=linspace(0,3,5000);
integrant=k_int.^2.*fk_local(k_int,mu0,t);
n0=simps(k_int,integrant)*3;
EF0=n0^(2/3)
T_Tilde0=t/EF0
%%

n_local=mu_local*0;
k_int=linspace(0,3,5000);

for i=1:length(n_local)
    integrant=k_int.^2.*fk_local(k_int,mu_local(i),t);
    n_local(i)=simps(k_int,integrant)*3;
end


fk=k*0;
for i=1:NK
    fk(i)=simps(r,2*pi*r.^1.*fk_local(k(i),mu_local,t));
    %fk(i)=trapz(r,2*pi*r.*fk_local(k(i),kF_local));
end
fk=fk/(pi);
%%
plot(r,n_local,'linewidth',2);
xlim([0,2]);
xlabel('r');ylabel('n(r)')

%%
%fk=fk/max(fk);

plot(k/sqrt(EF0),fk,'linewidth',2)
xlabel('k/k_F');
ylabel('f(k)')
xlim([0,2]);ylim([-0.1,1.1])
%% fit the simulated data with fermi dirac distribution
[xData, yData] = prepareCurveData( k, fk );

% Set up fittype and options.
ft = fittype( '1/(exp((1/t)*(x^2./kF.^2-1))+1)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.913375856139019 0.63235924622541];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

mu=fitresult.kF^2
TTilde=fitresult.t
ci=confint(fitresult);
TTildeErr=(ci(2,2)-ci(1,2))/2
muErr=(ci(2,1).^2-ci(2,2).^2)/2
%% plot the simulated data with fitting
% Plot fit with data.
figure( 'Name', 'Fermi-Dirac fitting' );
h = plot( fitresult, xData, yData );
legend( h, 'fk vs. k', 'Fermi-Dirac fitting', 'Location', 'NorthEast' );
% Label axes
xlabel k
ylabel fk

%%
load('fk1.mat');
%% fit the simulated data with fermi dirac distribution
[xData, yData] = prepareCurveData(kabs1Tilde, fk1 );

% Set up fittype and options.
ft = fittype( '1/(exp((1/t)*(x^2./kF.^2-1))+1)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.913375856139019 0.63235924622541];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

mu=fitresult.kF^2
TTilde=fitresult.t
ci=confint(fitresult);
TTildeErr=(ci(2,2)-ci(1,2))/2
muErr=(ci(2,1).^2-ci(2,2).^2)/2

%%
plot(k,fk,'linewidth',2);
hold on
scatter(kabs1Tilde,fk1)
hold off

%%
mask=kabs1Tilde<2;
kabs1Tilde=kabs1Tilde(mask);
fk1=fk1(mask);
fk1StdMean=fk1StdMean(mask);
scale=linspace(0.9,1.1,100);

%%
Ki=scale*0;
for i=1:length(scale)
    kfitscale=k*scale(i);
    fkint=interp1(kfitscale,fk,kabs1Tilde);
    Ki(i)=sum((fk1-fkint).^2);
end
plot(scale,Ki)
[Kimin,B]=min(Ki);
Kimin
kfitscale=scale(B)*k;
plot(kfitscale,fk,'k');
hold on
plot(kabs1Tilde,fk1,'o')
hold off
xlim([0,2]);ylim([-0.1,1.1])
xlabel('k/k_F');ylabel('n(k)');

%%
figure1 = figure;
% Create axes
axes1 = axes('Parent',figure1)%,'Units','inches','Position',[1,1,2,2],'XColorMode','manual','XColor',[1 1 0],'YColor',[1 0 0],'ZColor',[0 0 0]); 
plot(kfitscale,fk,'-','color',[36,85,189]/255)
hold on
plot(kabs1FitTilde,fk1Fit,'-','color','r')
errorbar1derr_Z(kabs1Tilde,fk1,fk1StdMean,'Marker','.','Markersize',10,'LineStyle','none','ErrLineWidth',0.75,'MarkerFaceColor',[49,115,255]/255,'MarkerEdgeColor',[49,115,255]/255,'ErrBarColor',[36/255,85/255,189/255]);
set(axes1,'XTick',[0 0.5 1 1.5 2],'XTickLabel',{'0','0.5','1','1.5','2'},'YTick',[0 0.25 0.5 0.75  1],'YTickLabel',{'0','','0.5','','1'});
%scatter(kabs1Tilde,fk1)
xlim([0,2]);ylim([-0.1,1.1])
hold off
set(axes1,'XColor',[0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0])
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

figure1 = figure;
% Create axes
axes1 = axes('Parent',figure1,'Units','inches','Position',[1,1,2.7,2.7],'XColorMode','manual','XColor',[1 1 0],'YColor',[1 0 0],'ZColor',[0 0 0]); 
%plot(kfitscaleR16,fkR16,'-','color',[36,85,189]/255)
plot(kfitscaleR16T020,fkR16T020,'-','color',[62,166,60]/255)
hold on


plot(kabs1FitTilde,fk1Fit,'-','color',[201,67,52]/255);

errorbar1derr_Z(kabs1Tilde,fk1,fk1StdMean,'Marker','.','Markersize',10,'LineStyle','none','ErrLineWidth',0.75,'MarkerFaceColor',[49,115,255]/255,'MarkerEdgeColor',[49,115,255]/255,'ErrBarColor',[36/255,85/255,189/255]);
set(axes1,'XTick',[0 0.5 1 1.5 2],'XTickLabel',{'0','0.5','1','1.5','2'},'YTick',[0 0.25 0.5 0.75  1],'YTickLabel',{'0','','0.5','','1'});
%scatter(kabs1Tilde,fk1)
xlim([0,2]);ylim([-0.1,1.1])
hold off
set(axes1,'XColor',[0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0])

%%
%Tmu=0.1, Ki=0.0592
%Tmu=0.15, Ki=0.0219
%Tmu=0.18, Ki=0.0329
%Tmu=0.13, Ki=0.0276
%Tmu=0.16,T/T_F=0.16, Ki=0.0232
%Tmu=0.14,Ki=0.0234

%% V=r^10
%Tmu=0.15,T=0.1472, Ki=0.0288
%Tmu=0.13,T=0.1282, Ki=0.0184
%Tmu=0.12,Ki=0.0167
%Tmu=0.11,Ki=0.0175
%Tmu=0.1,0.0211