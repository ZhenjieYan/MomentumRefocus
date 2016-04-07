addpath('Library');
z=20; %V=r^z;
E_F=1;
V=@(r,z) (r.^z).*(r>-1);
%%
NK=1000;
k=linspace(0,sqrt(E_F)*2,NK);
r=linspace(0,2,1000);
EF_local=max(E_F-V(r,z),0);
kF_local=sqrt(EF_local);
fk_local=@(k,kF,t) 1./(exp((1/t)*(k.^2./kF.^2-1))+1);
t=0.6;
fk=k*0;
for i=1:NK
    fk(i)=trapz(r,2*pi*r.*fk_local(k(i),kF_local,t).*(EF_local).^(3/2));
    %fk(i)=trapz(r,2*pi*r.*fk_local(k(i),kF_local));
end

fk=fk/max(fk);
plot(k,fk)
xlabel('k/k_F');
ylabel('f(k)')