addpath('../Library');
fk_local=@(k,mu,t) 1./(exp((1/t)*(k.^2-mu))+1);
mu0=1;
P=16;
r0=60;
z0=1000;
V=@(r,z) ((r/r0).^P).*(r>-1)+((z/z0).^16);
T_mu=0.11;
t=T_mu*mu0;

%% Calculate the central EF
k_int=linspace(0,3*sqrt(mu0),5000);
integrant=k_int.^2.*fk_local(k_int,mu0,t);
n0=simps(k_int,integrant)*3;
EF0=n0^(2/3)
T_Tilde0=t/EF0;
%% Define the spatial grid
Ngrid=1000;
Zgrid=linspace(-3*z0,3*z0,Ngrid);
%Zgrid=0;
rgrid=linspace(0,3*r0,Ngrid);
%% First calculate all the n(k,z) at certain z value
Kgrid=200;
kgrid=linspace(0,3*sqrt(mu0),Kgrid);
nzk=zeros(length(Zgrid),length(Kgrid));
for j=1:length(kgrid);
    for i=1:length(Zgrid)
        zi=Zgrid(i);
        mu_local=mu0-V(rgrid,zi);
        nzk(i,j)=simps(rgrid,2*pi*rgrid.*fk_local(kgrid(j),mu_local,t));
    end
    disp(j)
end
%%
plot(kgrid,nzk/(pi*r0^2))
%% Calculate the n(k)
fk=Kgrid*0;
for i=1:length(kgrid)
    fk(i)=simps(Zgrid,nzk(:,i)');
end
fk=fk/(pi*2*z0*r0^2);
%%
plot(kgrid,fk);
%%
save(['T=',num2str(T_mu),'.mat'],'kgrid','fk')
%%
load('fk.mat');
load('T=0.15.mat');
%%
plot(kgrid,fk,'linewidth',2);
hold on
scatter(kabs1Tilde,fk1)
hold off
%%
mask=kabs1Tilde<2;
kabs1Tilde=kabs1Tilde(mask);
fk1=fk1(mask);

scale=linspace(0.9,1.1,100);

%%
Ki=scale*0;
for i=1:length(scale)
    kfitscale=kgrid*scale(i);
    fkint=interp1(kfitscale,fk,kabs1Tilde);
    Ki(i)=sum((fk1-fkint).^2);
end
plot(scale,Ki)
[Kimin,B]=min(Ki);
Kimin
kfitscale=scale(B)*kgrid;
plot(kfitscale,fk,'k');
hold on
plot(kabs1Tilde,fk1,'o')
hold off
xlim([0,2]);ylim([-0.1,1.1])
xlabel('k/k_F');ylabel('n(k)');
%%
%Tmu=0.1, Ki=0.0218
%Tmu=0.15,Ki=0.0308
%Tmu=0.13, Ki=0.0197
%Tmu=0.12, Ki=0.0177
%Tmu=0.11, Ki=0.0184