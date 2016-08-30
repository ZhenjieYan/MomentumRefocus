%%
addpath('Library')
FDfun=@(P,k) P(1)*1./(exp(P(2)*(k.^2/P(3)-1))+1);
%%
k=linspace(0,2,100);
F1=FDfun([1,10,1],k);
F2=FDfun([0.5,10,1],k);
plot(k,F1,'linewidth',2,'DisplayName','n=n_0,E_F=E_F_0');
hold on
plot(k,F2,'linewidth',2,'DisplayName','n=0.5n_0,E_F=E_F_0');
hold off
line([1,1],[0,1.2],'color','k','linewidth',2,'DisplayName','k_F_0')
ylim([0,1.2]);
title('Fig.1 Same E_F (or k_F), different density n.');
xlabel('k');ylabel('n(k)');
legend('show')
%%
k=linspace(0,2,100);
F1=FDfun([1,20,1],k);
F2=FDfun([0.5,20,1.59],k);
plot(k,F1,'linewidth',2,'DisplayName','n=n_0, E_F=E_F_0');
hold on
plot(k,F2,'linewidth',2,'DisplayName','n=n_0, E_F=1.59E_F_0, k_F=1.26k_F_0');
hold off
line([1,1],[0,1.2],'color','k','linewidth',2,'DisplayName','k_F_0')
line([1.26,1.26],[0,1.2],'color','c','linewidth',2,'DisplayName','1.26k_F_0')
ylim([0,1.2]);
title('Fig.2 different E_F (or k_F), same density n.');
xlabel('k');ylabel('n(k)');
legend('show')