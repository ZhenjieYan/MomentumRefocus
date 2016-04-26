%%
addpath('Library')
kFNlist=[];
kFFitlist=[];

%% Physical Constant
mLi= 9.96e-27;
omega = 2*pi*23.9;
hbar = 1.055e-34;
%% T/T_F=0.2
momimages={'04-06-2016_22_21_15_top';'04-06-2016_22_20_18_top';'04-06-2016_22_19_22_top';'04-06-2016_22_18_25_top';'04-06-2016_22_17_28_top';'04-06-2016_22_16_32_top';'04-06-2016_22_15_35_top';'04-06-2016_22_14_38_top';'04-06-2016_22_12_11_top';'04-06-2016_22_11_14_top';'04-06-2016_22_10_18_top';'04-06-2016_22_09_21_top';'04-06-2016_22_08_25_top';'04-06-2016_22_07_28_top';'04-06-2016_22_06_31_top'};%
bgimages={'04-06-2016_23_12_03_top';'04-06-2016_23_11_12_top';'04-06-2016_23_10_21_top';'04-06-2016_23_09_29_top';'04-06-2016_23_08_38_top';'04-06-2016_23_07_46_top';'04-06-2016_23_06_55_top';'04-06-2016_23_06_03_top';'04-06-2016_23_05_12_top';'04-06-2016_23_04_20_top';'04-06-2016_23_03_29_top';'04-06-2016_23_02_37_top';'04-06-2016_23_01_46_top';'04-06-2016_23_00_55_top';'04-06-2016_23_00_03_top';'04-06-2016_22_59_12_top';'04-06-2016_22_58_20_top';'04-06-2016_22_57_29_top';'04-06-2016_22_56_37_top';'04-06-2016_22_55_46_top';'04-06-2016_22_54_54_top'};
output=momentumfocusRV(momimages,bgimages,'Nbins' ,100,'SM',2,'Fudge',1,'Nsat',330);

%%
Volume=output.Volume;
Ntot=output.Ntot;
n_intrap=output.nintrap;

k_F=(6*pi^2*n_intrap)^(1/3);
kzGrid=linspace(0,k_F,100);
kzsqGrid=kzGrid.^2;
dkz=kzGrid(2)-kzGrid(1);

Vk=4*pi/3*k_F^3;

nofkz=Ntot/Volume/Vk*(pi*(k_F^2-kzsqGrid));

% cftool(kzsqGrid,nofkz)

kzsqExp=output.kzsq;
n1dkExp=output.n1dofk;

plot(kzsqExp,n1dkExp,'r.');
hold on
plot(kzsqGrid,nofkz);
hold off