addpath('Library');
z=2;
V=@(r,z) (r.^2).*(r>-1);
%%
k=0.4; %the number of atom probed
E_F=1/(1-(1-k)^(2/5));
%%
NK=1000;
k=linspace(0,sqrt(E_F)*2,NK);
r=linspace(0,2,100000);
EF_local=max(E_F-V(r,z),0);
EF_local(r>1)=0;
n_local=EF_local.^(3/2);
kF_local=sqrt(EF_local);
fk_local=@(k,kF,t) 1./(exp((1/t)*(k.^2./kF.^2-1))+1);
t=0.12;
fk=k*0;
for i=1:NK
    fk(i)=trapz(r,2*pi*r.^1.*fk_local(k(i),kF_local,t));
    %fk(i)=trapz(r,2*pi*r.*fk_local(k(i),kF_local));
end
%fk=fk/max(fk);

fk=fk/(pi);

%%
plot(r,n_local,'linewidth',2);
xlim([0,2]);
xlabel('r');ylabel('n(r)')

%%
plot(k,fk,'linewidth',2)
xlabel('k/k_F');
ylabel('f(k)')

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
