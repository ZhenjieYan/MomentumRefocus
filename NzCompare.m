addpath('Library');
% imagenames={'03-11-2016_20_34_36_top';'03-11-2016_20_33_49_top';'03-11-2016_20_33_01_top';'03-11-2016_20_32_14_top';'03-11-2016_20_31_26_top';'03-11-2016_20_30_39_top';'03-11-2016_20_27_46_top';'03-11-2016_20_26_59_top';'03-11-2016_20_26_12_top';'03-11-2016_20_25_25_top';'03-11-2016_20_24_37_top';'03-11-2016_20_23_50_top';'03-11-2016_20_23_03_top';'03-11-2016_20_19_39_top';'03-11-2016_20_18_52_top';'03-11-2016_20_18_05_top';'03-11-2016_20_17_17_top';'03-11-2016_20_16_30_top';'03-11-2016_20_15_43_top';'03-11-2016_20_14_56_top';'03-11-2016_20_14_08_top';'03-11-2016_20_13_21_top';'03-11-2016_20_12_33_top';'03-11-2016_20_11_46_top';'03-11-2016_20_10_59_top';'03-11-2016_20_10_00_top';'03-11-2016_20_08_42_top';'03-11-2016_20_07_55_top';'03-11-2016_20_05_52_top';'03-11-2016_20_05_05_top';'03-11-2016_20_04_17_top'};
% time=[30;29;28;27;26;25;24;23;22;21;20;19;18;17;16;15;14;13;12;11;10;9;8;7;6;5;4;3;2;1;0];
% imagenames={'03-12-2016_01_33_02_top';'03-12-2016_01_30_22_top';'03-12-2016_01_29_34_top';'03-12-2016_01_28_47_top';'03-12-2016_01_27_59_top';'03-12-2016_01_27_12_top';'03-12-2016_01_26_24_top';'03-12-2016_01_25_37_top';'03-12-2016_01_24_49_top';'03-12-2016_01_24_02_top';'03-12-2016_01_23_15_top';'03-12-2016_01_22_27_top';'03-12-2016_01_21_40_top'};
% time=[26;24;22;20;18;16;14;12;10;8;4;2;0.00100000000000000];
%HybridList={'06-13-2016_23_02_30_top';'06-13-2016_23_00_35_top';'06-13-2016_22_56_23_top';'06-13-2016_22_55_30_top';'06-13-2016_22_54_37_top';'06-13-2016_22_53_45_top';'06-13-2016_22_52_52_top'};
%HybridList={'06-14-2016_00_00_22_top';'06-13-2016_23_58_29_top';'06-13-2016_23_55_51_top'};
HybridList={'06-14-2016_13_15_03_top'};
%MomList={'06-13-2016_23_19_45_top';'06-13-2016_23_18_53_top';'06-13-2016_23_18_00_top';'06-13-2016_23_11_57_top';'06-13-2016_23_08_58_top';'06-13-2016_23_05_22_top'};
%MomList={'06-14-2016_00_07_54_top';'06-14-2016_00_07_02_top';'06-14-2016_00_06_09_top';'06-14-2016_00_05_16_top';'06-14-2016_00_04_23_top';'06-14-2016_00_03_30_top'};
MomList={'06-14-2016_13_16_12_top'};
%%
ROIHybrid=[150,25,350,490];
ROIMom=[5,25,505,490];
Nsat=330;
pixellength=1.44*10^(-6);
sigma0=0.215*10^(-12)/2;
zmin=50;zmax=450;
%%
HybridZ=ROIHybrid(2):ROIHybrid(4);
NzAveHybrid=HybridZ*0;
for i=1:length(HybridList)
    [~,tempimg]=imagedata(HybridList{i});
    Ntemp=AtomNumber(tempimg,pixellength.^2,sigma0, Nsat);
    Ntemp=Ntemp(ROIHybrid(2):ROIHybrid(4),ROIHybrid(1):ROIHybrid(3));
    Nz=sum(Ntemp,2);
    NzAveHybrid=NzAveHybrid+Nz';
end
NzAveHybrid=NzAveHybrid/length(HybridList);
NzAveHybrid=TailTailor(NzAveHybrid,HybridZ,zmin,zmax);
%%
MomZ=ROIMom(2):ROIMom(4);
NzAveMom=MomZ*0;
for i=1:length(MomList)
    [~,tempimg]=imagedata(MomList{i});
    Ntemp=AtomNumber(tempimg,pixellength.^2,sigma0, Nsat);
    Ntemp=Ntemp(ROIMom(2):ROIMom(4),ROIMom(1):ROIMom(3));
    Nz=sum(Ntemp,2);
    NzAveMom=NzAveMom+Nz';
end
NzAveMom=NzAveMom/length(MomList);
NzAveMom=TailTailor(NzAveMom,MomZ,zmin,zmax);
%%
scatter(HybridZ,NzAveHybrid,'DisplayName','Intrap Hybrid, sum(N(z))=6.9e5');
hold on
scatter(MomZ,NzAveMom,'DisplayName','After T/4 TOF, sum(N(z))=7.8e5');
hold off
xlabel('z(pixel)');ylabel('N(z)');
legend('show')