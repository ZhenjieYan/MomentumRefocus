%%
addpath('Library')
kFNlist=[];
kFFitlist=[];

%% T/T_F~0.1, good one
DataSetName='T010_20160325';
momimages={'03-25-2016_00_14_23_top';'03-25-2016_00_13_28_top';'03-25-2016_00_12_32_top';'03-25-2016_00_10_52_top';'03-25-2016_00_09_56_top';'03-25-2016_00_09_01_top';'03-25-2016_00_08_05_top';'03-25-2016_00_07_10_top';'03-25-2016_00_06_14_top';'03-25-2016_00_05_19_top';'03-25-2016_00_04_23_top';'03-25-2016_00_03_28_top';'03-25-2016_00_02_32_top';'03-25-2016_00_01_37_top';'03-25-2016_00_00_41_top';'03-24-2016_23_59_46_top';'03-24-2016_23_58_50_top';'03-24-2016_23_57_55_top';'03-24-2016_23_56_59_top';'03-24-2016_23_56_04_top';'03-24-2016_23_55_08_top';'03-24-2016_23_54_13_top';'03-24-2016_23_53_17_top';'03-24-2016_23_52_22_top';'03-24-2016_23_51_26_top';'03-24-2016_23_50_31_top';'03-24-2016_23_49_10_top';'03-24-2016_23_48_14_top';'03-24-2016_23_47_19_top';'03-24-2016_23_46_24_top';'03-24-2016_23_45_28_top';'03-24-2016_23_44_33_top'};
bgimages={'03-24-2016_22_24_18_top';'03-24-2016_22_23_27_top';'03-24-2016_22_22_13_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');
%% T010_20160325
load('Data/T010_20160325');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',2,'TailRange',[50,450]);

%%
kFNlist=[kFNlist,output.kF_num];
kFFitlist=[kFFitlist,output.kF_Fit];

%% T/T_F~0.5, gpood one
DataSetName='T050_20160324';
momimages={'03-24-2016_23_31_27_top';'03-24-2016_23_30_32_top';'03-24-2016_23_29_36_top';'03-24-2016_23_27_50_top';'03-24-2016_23_25_58_top';'03-24-2016_23_25_03_top';'03-24-2016_23_24_07_top';'03-24-2016_23_23_12_top';'03-24-2016_23_22_16_top';'03-24-2016_23_21_20_top';'03-24-2016_23_20_25_top';'03-24-2016_23_19_29_top';'03-24-2016_23_18_34_top';'03-24-2016_23_17_38_top';'03-24-2016_23_16_42_top';'03-24-2016_23_15_47_top';'03-24-2016_23_14_51_top';'03-24-2016_23_12_17_top';'03-24-2016_23_11_21_top';'03-24-2016_23_10_25_top';'03-24-2016_23_09_30_top';'03-24-2016_23_08_34_top';'03-24-2016_23_07_39_top';'03-24-2016_23_06_43_top';'03-24-2016_23_05_47_top';'03-24-2016_23_04_52_top';'03-24-2016_23_02_35_top';'03-24-2016_23_01_40_top';'03-24-2016_23_00_44_top';'03-24-2016_22_59_48_top'};
bgimages={'03-24-2016_23_26_54_top';'03-24-2016_22_24_18_top';'03-24-2016_22_23_27_top';'03-24-2016_22_22_13_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');
%% T050_20160324
load('Data/T050_20160324');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',4,'TailRange',[40,420]);

%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]

%% T/T_F~0.17

DataSetName='T017_20160324';
momimages={'03-24-2016_21_06_46_top';'03-24-2016_21_05_55_top';'03-24-2016_21_05_03_top';'03-24-2016_21_04_12_top';'03-24-2016_21_03_20_top';'03-24-2016_21_02_29_top';'03-24-2016_21_01_38_top';'03-24-2016_21_00_00_top';'03-24-2016_20_59_09_top';'03-24-2016_20_58_18_top';'03-24-2016_20_55_44_top';'03-24-2016_20_54_52_top';'03-24-2016_20_53_09_top';'03-24-2016_20_52_18_top';'03-24-2016_20_51_27_top';'03-24-2016_20_50_35_top';'03-24-2016_20_49_44_top';'03-24-2016_20_48_52_top';'03-24-2016_20_48_01_top'};
bgimages={'03-24-2016_21_00_00_top';'03-24-2016_20_59_09_top';'03-24-2016_20_58_18_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');
%% T017_20160324
load('Data/T017_20160324');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',4,'TailRange',[40,420]);

%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]

%% Fitting not working well T/T_F~0.2

DataSetName='T020_20160324';
momimages={'03-24-2016_22_40_59_top';'03-24-2016_22_37_32_top';'03-24-2016_22_36_41_top';'03-24-2016_22_35_50_top';'03-24-2016_22_34_59_top';'03-24-2016_22_34_08_top';'03-24-2016_22_32_39_top';'03-24-2016_22_31_48_top';'03-24-2016_22_30_57_top';'03-24-2016_22_30_06_top';'03-24-2016_22_28_44_top';'03-24-2016_22_27_53_top';'03-24-2016_22_27_02_top';'03-24-2016_22_24_18_top';'03-24-2016_22_23_27_top';'03-24-2016_22_22_13_top';'03-24-2016_22_21_22_top';'03-24-2016_22_20_31_top';'03-24-2016_22_18_34_top';'03-24-2016_22_17_43_top';'03-24-2016_22_16_51_top';'03-24-2016_22_15_46_top';'03-24-2016_22_14_43_top';'03-24-2016_22_13_23_top';'03-24-2016_22_12_19_top'};
bgimages={'03-24-2016_21_00_00_top';'03-24-2016_20_59_09_top';'03-24-2016_20_58_18_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');

%% T020_20160324
load('Data/T020_20160324')
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',4);
%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]

%% T/T_F~0.2, semi-goodone
DataSetName='T0202_20160324';
momimages={'03-24-2016_21_29_23_top';'03-24-2016_21_28_32_top';'03-24-2016_21_27_40_top';'03-24-2016_21_26_49_top';'03-24-2016_21_25_57_top';'03-24-2016_21_25_06_top';'03-24-2016_21_24_14_top';'03-24-2016_21_23_23_top';'03-24-2016_21_22_31_top';'03-24-2016_21_21_40_top';'03-24-2016_21_20_48_top';'03-24-2016_21_19_57_top'};
bgimages={'03-24-2016_21_00_00_top';'03-24-2016_20_59_09_top';'03-24-2016_20_58_18_top';'03-24-2016_20_46_43_top';'03-24-2016_21_44_04_top';'03-24-2016_22_24_18_top';'03-24-2016_22_23_27_top';'03-24-2016_22_22_13_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');

%% T0202_20160324
load('Data/T0202_20160324');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',4,'IfFourierFilter',1);

%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]

%% T/T_F~0.17
DataSetName='T017_20160321';
momimages={'03-22-2016_00_44_20_top';'03-22-2016_00_42_07_top';'03-22-2016_00_41_12_top';'03-22-2016_00_40_18_top';'03-22-2016_00_39_24_top';'03-22-2016_00_38_30_top';'03-22-2016_00_37_35_top';'03-22-2016_00_36_41_top';'03-22-2016_00_35_46_top';'03-22-2016_00_34_15_top'};
bgimages={'03-21-2016_23_40_31_top'}; 
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');
%% T017_20160321
load('Data/T017_20160321');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',4);

%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]

%% T/T_F~0.15
DataSetName='T015_20160321';
momimages={'03-22-2016_00_44_20_top';'03-22-2016_00_42_07_top';'03-22-2016_00_41_12_top';'03-22-2016_00_40_18_top';'03-22-2016_00_39_24_top';'03-22-2016_00_38_30_top';'03-22-2016_00_37_35_top';'03-22-2016_00_36_41_top';'03-22-2016_00_35_46_top';'03-22-2016_00_34_15_top'};
bgimages={'03-21-2016_23_40_31_top'}; 
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');
%% T015_20160321
load('Data/T015_20160321');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',4);
%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]

%% T/T_F~0.1, goodone
DataSetName='T010_20160312';
momimages={'03-12-2016_01_54_06_top';'03-12-2016_01_53_18_top';'03-12-2016_01_52_31_top';'03-12-2016_01_51_43_top';'03-12-2016_01_49_03_top';'03-12-2016_01_48_16_top';'03-12-2016_01_46_41_top';'03-12-2016_01_45_07_top';'03-12-2016_01_40_40_top'};
bgimages={'03-12-2016_01_19_51_top';'03-12-2016_02_08_01_top';'03-12-2016_02_11_04_top';'03-12-2016_02_18_00_top';'03-12-2016_02_18_00_top';'03-12-2016_01_38_19_top';'03-12-2016_01_35_10_top';'03-12-2016_01_19_51_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');
%% T010_20160312
load('Data/T010_20160312');  
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',4);
%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]
%% T/T_F~0.17
DataSetName='T017_20160304';
momimages={'03-04-2016_21_31_32_top';'03-04-2016_21_30_39_top';'03-04-2016_21_29_45_top';'03-04-2016_21_28_51_top';'03-04-2016_21_27_57_top';'03-04-2016_21_27_03_top';'03-04-2016_21_26_10_top';'03-04-2016_21_25_16_top';'03-04-2016_21_24_22_top';'03-04-2016_21_18_09_top';'03-04-2016_21_17_16_top';'03-04-2016_21_16_22_top';'03-04-2016_21_15_28_top';'03-04-2016_21_14_34_top';'03-04-2016_21_13_40_top';'03-04-2016_21_12_47_top';'03-04-2016_21_11_53_top';'03-04-2016_21_10_59_top';'03-04-2016_21_10_05_top';'03-04-2016_21_09_12_top';'03-04-2016_21_08_18_top';'03-04-2016_21_07_24_top';'03-04-2016_21_06_30_top';'03-04-2016_21_05_37_top';'03-04-2016_21_04_43_top';'03-04-2016_21_02_55_top';'03-04-2016_21_02_01_top'};
bgimages={'03-04-2016_21_22_44_top';'03-04-2016_21_21_28_top';'03-04-2016_21_20_34_top';'03-04-2016_21_19_41_top';'03-04-2016_21_36_16_top';'03-04-2016_21_35_23_top';'03-04-2016_21_34_29_top';'03-04-2016_21_33_35_top';'03-04-2016_21_43_27_top';'03-04-2016_21_42_33_top';'03-04-2016_21_41_39_top';'03-04-2016_21_40_45_top';'03-04-2016_21_39_51_top';'03-04-2016_21_38_58_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');

%% T017_20160304
load('Data/T017_20160304');
output=momentumfocusRV(momimagesList,{},'Nbins' ,60,'SM',4);

%%
kFNlist=[kFNlist,output.kF_num]
kFFitlist=[kFFitlist,output.kF_Fit]

%% T/TF=0.4

DataSetName='T040_20160404';
momimages={'04-04-2016_22_45_27_top';'04-04-2016_22_44_31_top';'04-04-2016_22_43_35_top';'04-04-2016_22_42_39_top';'04-04-2016_22_41_44_top';'04-04-2016_22_40_48_top';'04-04-2016_22_39_52_top';'04-04-2016_22_38_56_top';'04-04-2016_22_27_39_top';'04-04-2016_22_26_43_top';'04-04-2016_22_25_47_top';'04-04-2016_22_24_51_top';'04-04-2016_22_23_02_top';'04-04-2016_22_22_06_top';'04-04-2016_22_21_11_top'};
bgimages={'04-04-2016_22_37_22_top';'04-04-2016_22_36_26_top';'04-04-2016_22_34_15_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');


%%
load('Data/T040_20160404');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1);


%% T/T_F=0.1

DataSetName='T010_20160404';
momimages={'04-04-2016_23_49_17_top';'04-04-2016_23_48_19_top';'04-04-2016_23_47_21_top';'04-04-2016_23_46_23_top';'04-04-2016_23_45_25_top';'04-04-2016_23_44_28_top';'04-04-2016_23_43_30_top';'04-04-2016_23_42_32_top';'04-04-2016_23_41_34_top';'04-04-2016_23_40_36_top';'04-04-2016_23_39_38_top';'04-04-2016_23_38_40_top';'04-04-2016_23_37_42_top';'04-04-2016_23_36_44_top';'04-04-2016_23_35_46_top';'04-04-2016_23_34_49_top';'04-04-2016_23_33_51_top'};
bgimages={'04-04-2016_22_37_22_top';'04-04-2016_22_36_26_top';'04-04-2016_22_34_15_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');


%% T010_20160404
load('Data/T010_20160404');
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1);



%% T/T_F=0.2

DataSetName='T020_20160406';
momimages={'04-06-2016_22_21_15_top';'04-06-2016_22_20_18_top';'04-06-2016_22_19_22_top';'04-06-2016_22_18_25_top';'04-06-2016_22_17_28_top';'04-06-2016_22_16_32_top';'04-06-2016_22_15_35_top';'04-06-2016_22_14_38_top';'04-06-2016_22_12_11_top';'04-06-2016_22_11_14_top';'04-06-2016_22_10_18_top';'04-06-2016_22_09_21_top';'04-06-2016_22_08_25_top';'04-06-2016_22_07_28_top';'04-06-2016_22_06_31_top'};%
bgimages={'04-06-2016_23_12_03_top';'04-06-2016_23_11_12_top';'04-06-2016_23_10_21_top';'04-06-2016_23_09_29_top';'04-06-2016_23_08_38_top';'04-06-2016_23_07_46_top';'04-06-2016_23_06_55_top';'04-06-2016_23_06_03_top';'04-06-2016_23_05_12_top';'04-06-2016_23_04_20_top';'04-06-2016_23_03_29_top';'04-06-2016_23_02_37_top';'04-06-2016_23_01_46_top';'04-06-2016_23_00_55_top';'04-06-2016_23_00_03_top';'04-06-2016_22_59_12_top';'04-06-2016_22_58_20_top';'04-06-2016_22_57_29_top';'04-06-2016_22_56_37_top';'04-06-2016_22_55_46_top';'04-06-2016_22_54_54_top'};
momimagesList={};
bgimagesList={};
for i=1:length(momimages)
    tic
    [~,tempImg]=imagedata(momimages{i});
    momimagesList=[momimagesList;tempImg];
    toc
end
for i=1:length(bgimages)
    tic
    [~,tempImg]=imagedata(bgimages{i});
    bgimagesList=[bgimagesList;tempImg];
    toc
end
save(DataSetName,'momimagesList','bgimagesList');
%%
load('Data/T020_20160406')
output=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1,'Nsat',inf);

%% T/T_F=0.15, kF 3.5 set11
momimagesList={'05-04-2016_22_05_48_top'};
bgimagesList={};
out1=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,100,'SM',4,'Fudge',1,'Nsat',120,'ROI1',[150,5,180,480]);
%% T/T_F=0.15, kF 2.8
momimagesList={'05-04-2016_22_09_21_top'};
bgimagesList={};
out2=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);
%% kF 1.7
momimagesList={'05-04-2016_22_10_14_top'};
bgimagesList={};
out3=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);
%% kF 2.5
momimagesList={'05-04-2016_22_30_24_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);


%% kF 2.9 averaged awesome

momimagesList={'05-04-2016_22_40_53_top';'05-04-2016_22_39_08_top';'05-04-2016_22_38_15_top';'05-04-2016_22_37_23_top';'05-04-2016_22_36_31_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);

%% kF 2.1 averaged bad fudge (goes to 1)

momimagesList={'05-04-2016_22_50_02_top';'05-04-2016_22_49_09_top';'05-04-2016_22_48_17_top';'05-04-2016_22_47_25_top';'05-04-2016_22_46_32_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);
%% kF 2.4 

momimagesList={'05-04-2016_23_11_10_top';'05-04-2016_23_08_57_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,50,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);
%%
momimagesList={'05-05-2016_00_01_28_top';'05-05-2016_00_00_28_top';'05-04-2016_23_59_27_top';'05-04-2016_23_57_26_top';'05-04-2016_23_56_26_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);
%%
momimagesList={'05-05-2016_00_17_06_top';'05-05-2016_00_16_06_top';'05-05-2016_00_15_05_top';'05-05-2016_00_14_04_top';'05-05-2016_00_13_03_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480]);

%% %%%%%%%%%%%%%  DATA SETS FROM May 4 2016 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Set 1
momimagesList={'05-05-2016_00_19_07_top';'05-05-2016_00_18_07_top';'05-05-2016_00_17_06_top';'05-05-2016_00_16_06_top';'05-05-2016_00_15_05_top';'05-05-2016_00_14_04_top';'05-05-2016_00_13_03_top'};
bgimagesList={};
out1=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',63.5,'D',99);

%% Set 2
momimagesList={'05-05-2016_00_01_28_top';'05-05-2016_00_00_28_top';'05-04-2016_23_59_27_top';'05-04-2016_23_57_26_top';'05-04-2016_23_56_26_top'};
bgimagesList={};
out2=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',65.1,'D',103.6);

%% Set 3 -- semi-final
momimagesList={'05-04-2016_23_47_20_top';'05-04-2016_23_46_19_top';'05-04-2016_23_44_03_top';'05-04-2016_23_42_12_top'};
bgimagesList={};
out3=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,20,'SM',1,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',67.2,'D',101.4);

%% Set 4
momimagesList={'05-04-2016_23_28_20_top';'05-04-2016_23_27_24_top';'05-04-2016_23_26_27_top';'05-04-2016_23_25_30_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',67.1,'D',101.6);

%% Set 5
momimagesList={'05-04-2016_23_18_12_top';'05-04-2016_23_17_12_top';'05-04-2016_23_16_13_top';'05-04-2016_23_15_14_top'};
bgimagesList={};
out5=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',64.6,'D',102.4);

%% Set 6 -- semi-final
momimagesList={'05-04-2016_23_04_37_top';'05-04-2016_23_03_40_top';'05-04-2016_23_02_44_top'};
bgimagesList={};
out6=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,20,'SM',1,'Fudge',1,'Nsat',120,'ROI1',[170,5,170,480],'H',65.9,'D',96.8);

%% Set 7
momimagesList={'05-04-2016_22_57_37_top';'05-04-2016_22_56_45_top';'05-04-2016_22_55_53_top';'05-04-2016_22_55_00_top'};
bgimagesList={};
out7=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',68.7,'D',103.2);

%% Set 8
momimagesList={'05-04-2016_22_50_54_top';'05-04-2016_22_50_02_top';'05-04-2016_22_49_09_top';'05-04-2016_22_48_17_top';'05-04-2016_22_47_25_top';'05-04-2016_22_46_32_top'};
bgimagesList={};
out8=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',64.1,'D',103.8);

%% Set 9 -- semi-final
momimagesList={'05-04-2016_22_40_53_top';'05-04-2016_22_39_08_top';'05-04-2016_22_38_15_top';'05-04-2016_22_37_23_top';'05-04-2016_22_36_31_top'};
bgimagesList={};
out9=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,20,'SM',1,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',66.9,'D',104.6);

%% Set 10
momimagesList = {'05-04-2016_22_29_31_top';'05-04-2016_22_28_39_top';'05-04-2016_22_27_46_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,80,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',66,'D',102);
disp([num2str(outp.kF_num * 1e-6),'; ', num2str(outp.kF_Fit * 1e-6),'; ',num2str(outp.Pfit(1)),'; ',num2str(outp.T)])

%% Set 11 -- semi-final
momimagesList={'05-04-2016_22_05_48_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,25,'SM',1,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',66,'D',102);
disp([num2str(outp.kF_num * 1e-6),'; ', num2str(outp.kF_Fit * 1e-6),'; ',num2str(outp.Pfit(1)),'; ',num2str(outp.T)])
out11=outp;

%% Set 12 -- semi-final
momimagesList={'05-04-2016_22_09_21_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,30,'SM',1,'Fudge',1,'Nsat',120,'ROI1',[170,5,180,480],'H',66,'D',102);
disp([num2str(outp.kF_num * 1e-6),'; ', num2str(outp.kF_Fit * 1e-6),'; ',num2str(outp.Pfit(1)),'; ',num2str(outp.T)])
out12 = outp;

%% Set 13
momimagesList={'05-04-2016_22_10_14_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,100,'SM',4,'Fudge',1,'Nsat',120,'ROI1',[150,5,180,480],'H',66,'D',102);
disp([num2str(outp.kF_num * 1e-6),'; ', num2str(outp.kF_Fit * 1e-6),'; ',num2str(outp.Pfit(1)),'; ',num2str(outp.T)])

%% Set 14
momimagesList={'05-04-2016_22_30_24_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,100,'SM',4,'Fudge',1,'Nsat',120,'ROI1',[150,5,180,480],'H',66,'D',102);
disp([num2str(outp.kF_num * 1e-6),'; ', num2str(outp.kF_Fit * 1e-6),'; ',num2str(outp.Pfit(1)),'; ',num2str(outp.T)])


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
momimagesList={'05-06-2016_00_58_28_top';'05-06-2016_00_57_34_top';'05-06-2016_00_56_40_top';'05-06-2016_00_55_47_top';'05-06-2016_00_54_54_top';'05-06-2016_00_53_33_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,60,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[5,5,500,480]);
%% RF then evap
momimagesList={'05-06-2016_00_44_48_top';'05-06-2016_00_43_54_top';'05-06-2016_00_43_01_top';'05-06-2016_00_40_10_top';'05-06-2016_00_38_53_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[5,5,500,480]);
%% Evap then RF
momimagesList={'05-09-2016_21_38_22_top';'05-09-2016_21_37_28_top';'05-09-2016_21_36_34_top';'05-09-2016_21_34_32_top';'05-09-2016_21_33_39_top';'05-09-2016_21_32_45_top';'05-09-2016_21_31_52_top';'05-09-2016_21_30_58_top';'05-09-2016_21_30_04_top';'05-09-2016_21_29_10_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[5,5,500,480]);

%% Cherry picking
momimagesList = {'05-09-2016_21_54_53_top'};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[5,5,500,480]);


%% No Slicing
momimagesList = {'05-18-2016_19_49_09_top';'05-18-2016_19_48_16_top';'05-18-2016_19_47_24_top';'05-18-2016_19_46_31_top';'05-18-2016_19_45_39_top';'05-18-2016_19_44_46_top';'05-18-2016_19_43_54_top';'05-18-2016_19_43_01_top';'05-18-2016_19_42_09_top';'05-18-2016_19_41_16_top'};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',120,'ROI1',[5,5,500,480]);


%% Slicing

momimagesList = {'05-18-2016_20_01_44_top';'05-18-2016_20_00_52_top';'05-18-2016_19_59_59_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',330,'ROI1',[5,5,500,480]);

%% Slicing less endcap power - no offset 05/18/2016

momimagesList = {'05-18-2016_21_18_43_top';'05-18-2016_21_17_51_top';'05-18-2016_21_16_58_top';'05-18-2016_21_16_06_top';'05-18-2016_21_15_14_top';'05-18-2016_21_14_22_top';'05-18-2016_21_13_29_top';'05-18-2016_21_12_37_top';'05-18-2016_21_11_45_top';'05-18-2016_21_10_53_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1.5,'Nsat',330,'ROI1',[5,5,500,480]);

%% Slicing higher endcap power 05-19-2016

momimagesList = {'05-19-2016_22_52_00_top';'05-19-2016_22_51_07_top';'05-19-2016_22_50_15_top';'05-19-2016_22_49_23_top';'05-19-2016_22_48_31_top';'05-19-2016_22_47_38_top';'05-19-2016_22_46_46_top';'05-19-2016_22_45_54_top';'05-19-2016_22_45_02_top';'05-19-2016_22_44_09_top';'05-19-2016_22_43_17_top';'05-19-2016_22_42_25_top';'05-19-2016_22_41_33_top';'05-19-2016_22_40_40_top';'05-19-2016_22_39_48_top';'05-19-2016_22_38_56_top';'05-19-2016_22_38_04_top';'05-19-2016_22_37_11_top';'05-19-2016_22_36_19_top';'05-19-2016_22_35_27_top';'05-19-2016_22_34_34_top';'05-19-2016_22_33_42_top';'05-19-2016_22_31_57_top';'05-19-2016_22_19_46_top';'05-19-2016_22_16_17_top';'05-19-2016_22_15_25_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',330,'ROI1',[5,5,500,480]);

%% No Slicing higher endcap power 05-19-2016

momimagesList = {'05-19-2016_22_55_50_top';'05-19-2016_22_54_57_top';'05-19-2016_22_54_05_top';'05-19-2016_22_53_12_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',330,'ROI1',[5,5,500,480]);


%% more evap 05-19-2016
momimagesList = {'05-19-2016_23_40_14_top';'05-19-2016_23_39_22_top';'05-19-2016_23_38_30_top';'05-19-2016_23_37_38_top';'05-19-2016_23_36_45_top';'05-19-2016_23_35_53_top';'05-19-2016_23_35_01_top';'05-19-2016_23_34_09_top';'05-19-2016_23_33_16_top';'05-19-2016_23_32_24_top';'05-19-2016_23_31_32_top';'05-19-2016_23_30_40_top';'05-19-2016_23_29_47_top';'05-19-2016_23_28_55_top';'05-19-2016_23_28_03_top';'05-19-2016_23_27_11_top';'05-19-2016_23_26_18_top';'05-19-2016_23_25_26_top';'05-19-2016_23_24_34_top';'05-19-2016_23_19_34_top';'05-19-2016_23_18_42_top';'05-19-2016_23_17_50_top';'05-19-2016_23_16_57_top';'05-19-2016_23_16_05_top';'05-19-2016_23_15_13_top';'05-19-2016_23_14_21_top';'05-19-2016_23_12_36_top';'05-19-2016_23_11_44_top';'05-19-2016_23_10_52_top';'05-19-2016_23_09_59_top';'05-19-2016_23_09_07_top';'05-19-2016_23_08_15_top';'05-19-2016_23_07_23_top';'05-19-2016_23_06_31_top'};
bgimagesList={};
out4=momentumfocusRV(momimagesList,bgimagesList,'Nbins' ,90,'SM',3,'Fudge',1,'Nsat',330,'ROI1',[5,5,500,480]);

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% MAY 20   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Run1
momimagesList = {'05-20-2016_22_17_28_top';'05-20-2016_22_16_35_top';'05-20-2016_22_15_41_top';'05-20-2016_22_14_48_top';'05-20-2016_22_13_30_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',1,'Nsat',330,'ROI1',[160,5,170,480],'volume',(63*1.39e-6)*pi*(122)*(142)*(1.022e-6)^2);

%% Run2
momimagesList = {'05-20-2016_22_51_46_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',1,'Nsat',330,'ROI1',[160,5,170,480],'volume',(63*1.39e-6)*pi*(122)*(142)*(1.022e-6)^2);
%% Run3
momimagesList = {'05-20-2016_23_05_43_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',1,'Nsat',330,'ROI1',[160,5,170,480],'volume',(63*1.39e-6)*pi*(122)*(142)*(1.022e-6)^2);




%% %%%%%%%%%%%%%%% MAY 21%%%%%%%%%%%%%%%%%%%%%%


%% No slicing
momimagesList ={'05-21-2016_20_25_50_top';'05-21-2016_20_24_57_top';'05-21-2016_20_24_05_top';'05-21-2016_20_22_47_top';'05-21-2016_20_21_54_top';'05-21-2016_20_21_02_top';'05-21-2016_20_20_09_top';'05-21-2016_20_19_17_top';'05-21-2016_20_18_25_top';'05-21-2016_20_17_32_top';'05-21-2016_20_16_40_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',3,'Nsat',330,'ROI1',[160,5,200,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2);


%% slicing
momimagesList ={'05-21-2016_20_47_55_top';'05-21-2016_20_45_48_top';'05-21-2016_20_44_55_top';'05-21-2016_20_44_03_top';'05-21-2016_20_43_10_top';'05-21-2016_20_42_18_top';'05-21-2016_20_35_57_top';'05-21-2016_20_35_04_top';'05-21-2016_20_34_11_top';'05-21-2016_20_31_34_top';'05-21-2016_20_29_49_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',3,'Nsat',330,'ROI1',[160,5,200,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2);


%% slicing + no green
momimagesList ={'05-21-2016_21_05_43_top';'05-21-2016_21_03_16_top';'05-21-2016_21_02_23_top';'05-21-2016_21_01_31_top';'05-21-2016_21_00_39_top';'05-21-2016_20_59_46_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',3,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2);




%% no slicing + no green
momimagesList ={'05-21-2016_21_06_48_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',3,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2);


%% more minorities (-7dbm
momimagesList ={'05-21-2016_21_19_09_top';'05-21-2016_21_18_16_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',1, ...
    'Fudge',3,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2);

%%
momimagesList ={'06-10-2016_21_58_23_top';'06-10-2016_21_57_28_top';'06-10-2016_21_56_33_top';'06-10-2016_21_55_38_top';'06-10-2016_21_54_43_top';'06-10-2016_21_53_48_top';'06-10-2016_21_52_53_top';'06-10-2016_21_51_58_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2/4);
%%
momimagesList ={'06-10-2016_23_08_46_top';'06-10-2016_23_07_51_top';'06-10-2016_23_06_56_top';'06-10-2016_23_06_01_top';'06-10-2016_23_05_06_top';'06-10-2016_23_04_11_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2/4);
%%
momimagesList ={'06-10-2016_23_26_05_top';'06-10-2016_23_24_15_top';'06-10-2016_23_22_12_top';'06-10-2016_23_20_22_top';'06-10-2016_23_18_32_top'};
bgimagesList={'06-10-2016_23_33_57_top';'06-10-2016_23_32_07_top';'06-10-2016_23_30_16_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2/4);
%%
momimagesList ={'06-10-2016_23_41_11_top';'06-10-2016_23_39_21_top';'06-10-2016_23_37_31_top'};
bgimagesList={'06-10-2016_23_51_16_top';'06-10-2016_23_47_35_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2/4);
%%
momimagesList ={'06-13-2016_18_06_32_top';'06-13-2016_17_54_20_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2/4);
%%
momimagesList ={'06-13-2016_18_28_24_top','06-13-2016_18_29_19_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(63*1.39e-6)*pi*(122)*(120)*(1.022e-6)^2/4);
%% June 14 with B ramp to zero crossing - trap averaged
momimagesList ={'06-14-2016_14_23_37_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);

%% June 14 with B ramp to zero crossing - not trap averaged
momimagesList ={'06-14-2016_15_17_16_top';'06-14-2016_15_16_21_top';'06-14-2016_15_15_26_top';'06-14-2016_15_13_26_top';'06-14-2016_15_12_00_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);

%% June 14 with B ramp to zero crossing - not trap averaged
momimagesList ={'06-14-2016_15_36_21_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);

%% June 14 with B ramp to zero crossing - box with varying atoms
momimagesList ={'06-14-2016_15_36_21_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;
momimagesList ={'06-14-2016_15_35_26_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_2 = outp;
momimagesList ={'06-14-2016_15_33_18_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_3 = outp;
momimagesList ={'06-14-2016_15_32_23_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_4 = outp;
figure
plot(outp_1.kzBin,outp_1.ffit)
hold all
plot(outp_1.kzBin,outp_1.fk)
plot(outp_2.kzBin,outp_2.fk)
plot(outp_2.kzBin,outp_2.ffit)
plot(outp_3.kzBin,outp_3.fk)
plot(outp_3.kzBin,outp_3.ffit)
plot(outp_4.kzBin,outp_4.fk)
plot(outp_4.kzBin,outp_4.ffit)



%% June 14 with B ramp to zero crossing - tof in ODT + slicing
momimagesList ={'06-14-2016_16_10_39_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
%% June 14 with B ramp to zero crossing - tof in ODT + slicing
momimagesList ={'06-14-2016_16_15_40_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',90,'SM',3, ...
    'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);

%% June 14 with B ramp to zero crossing - box with varying atoms odt + slicing
%0.3
momimagesList ={'06-14-2016_17_05_46_top';'06-14-2016_17_04_51_top';'06-14-2016_17_03_56_top';'06-14-2016_17_03_01_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;
%0.2
momimagesList ={'06-14-2016_17_11_13_top';'06-14-2016_17_10_18_top';'06-14-2016_17_09_23_top';'06-14-2016_17_06_58_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_2 = outp;
%0.5
momimagesList ={'06-14-2016_17_15_29_top';'06-14-2016_17_13_58_top';'06-14-2016_17_13_03_top';'06-14-2016_17_12_08_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_3 = outp;
%0.1
momimagesList ={'06-14-2016_17_28_30_top';'06-14-2016_17_27_35_top';'06-14-2016_17_26_40_top';'06-14-2016_17_25_45_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_4 = outp;
%0.05
momimagesList ={'06-14-2016_17_32_37_top';'06-14-2016_17_31_42_top';'06-14-2016_17_30_47_top';'06-14-2016_17_29_25_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_5 = outp;
%0.07
momimagesList ={'06-14-2016_17_40_41_top';'06-14-2016_17_39_46_top';'06-14-2016_17_38_51_top';'06-14-2016_17_37_56_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_6 = outp;
%0.45
momimagesList ={'06-14-2016_17_55_38_top';'06-14-2016_17_53_09_top';'06-14-2016_17_52_14_top';'06-14-2016_17_50_24_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_7 = outp;
%0.15
momimagesList ={'06-14-2016_17_59_19_top';'06-14-2016_17_58_24_top';'06-14-2016_17_57_28_top';'06-14-2016_17_56_33_top'};
bgimagesList={'06-14-2016_17_45_48_top';'06-14-2016_17_44_53_top';'06-14-2016_17_43_58_top';'06-14-2016_17_42_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',50,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,500,480],'volume',(70*1.39e-6)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_8 = outp;

figure
hold all
plot(outp_3.kzBin,outp_3.fk)
plot(outp_3.kzBin,outp_3.ffit)
plot(outp_7.kzBin,outp_7.fk)
plot(outp_7.kzBin,outp_7.ffit)
plot(outp_1.kzBin,outp_1.ffit)
plot(outp_1.kzBin,outp_1.fk)
plot(outp_2.kzBin,outp_2.fk)
plot(outp_2.kzBin,outp_2.ffit)
plot(outp_8.kzBin,outp_8.fk)
plot(outp_8.kzBin,outp_8.ffit)
plot(outp_4.kzBin,outp_4.fk)
plot(outp_4.kzBin,outp_4.ffit)
plot(outp_6.kzBin,outp_6.fk)
plot(outp_6.kzBin,outp_6.ffit)
plot(outp_5.kzBin,outp_5.fk)
plot(outp_5.kzBin,outp_5.ffit)

%% %%%%%%%%%%%%   June 15 Data   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% trials 0.9 evap
momimagesList ={'06-15-2016_20_57_50_top','06-15-2016_20_59_09_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% trials 0.4 evap
momimagesList ={'06-15-2016_21_03_46_top','06-15-2016_21_04_47_top','06-15-2016_21_05_44_top','06-15-2016_21_17_48_top','06-15-2016_21_19_38_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,510,480],'volume',(52*1.39e-6*1.5)*pi*(125)*(98)*(1.022e-6)^2/4);
outp_1 = outp;

%% trials 0.6 evap
momimagesList ={'06-15-2016_21_36_31_top';'06-15-2016_21_35_36_top';'06-15-2016_21_32_14_top';'06-15-2016_21_38_42_top';'06-15-2016_21_39_37_top';'06-15-2016_21_40_32_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,510,480],'volume',(52*1.39e-6*1.5)*pi*(125)*(98)*(1.022e-6)^2/4);
outp_1 = outp;

%% Defringed

momimages={'05-04-2016_23_08_57_top'};
N=length(momimages);
momlist=cell(N,1);
for i=1:N
    momlist{i}=fitsread(['/Volumes/Processed Data/Temporary/2016-03-12/',momimages{i},'_defringed.fits']);
end
bgimages={'03-12-2016_01_19_51_top'};
%%
output=momentumfocusRV(momlist,bgimages,'Nbins' ,60,'SM',4);

%%
scatter(kFNlist,kFFitlist,'DisplayName','Experimental Data');
hold on
line([0,4e6],[0,4e6],'DisplayName','y=x','color','r','linewidth',2);
xlabel('k_F from total atom number (m^{-1})');
ylabel('k_F from Fermi-Dirac distribution (m^{-1})');
legend('show')
hold off


%% %%%%%%%%%%%%   June 16 Data   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% -17dBm
momimagesList ={'06-16-2016_14_43_32_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% Really gud
momimagesList ={'06-16-2016_15_05_47_top';'06-16-2016_15_04_53_top';'06-16-2016_15_03_59_top';'06-16-2016_15_03_05_top';'06-16-2016_15_02_11_top';'06-16-2016_14_58_58_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% Noslice
momimagesList ={'06-16-2016_15_14_39_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',630,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% slice
momimagesList ={'06-16-2016_15_17_27_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',330,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% high intensity
momimagesList ={'06-16-2016_15_21_30_top'};
bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',1230,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% low intensity
momimagesList ={'06-16-2016_17_35_35_top';'06-16-2016_17_34_41_top';'06-16-2016_17_33_47_top';'06-16-2016_17_32_53_top'};
bgimagesList={'06-16-2016_17_38_16_top';'06-16-2016_17_37_22_top';'06-16-2016_17_36_29_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',130,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% test
momimagesList ={'06-17-2016_15_18_06_top'};
%bgimagesList={};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',150,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(50*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp_1 = outp;

%% vary atoms:

bgimagesList={'06-16-2016_22_14_59_top';'06-16-2016_22_14_05_top';'06-16-2016_22_13_11_top';'06-16-2016_22_12_17_top';'06-16-2016_22_11_23_top';'06-16-2016_22_10_28_top';'06-16-2016_22_09_34_top'};

%1
momimagesList ={'06-16-2016_23_00_48_top';'06-16-2016_22_59_00_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 1;
atomvary(1) = outp;
%0.8
momimagesList ={'06-16-2016_23_03_30_top';'06-16-2016_23_02_36_top';'06-16-2016_23_01_42_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.8;
atomvary(2) = outp;
%0.6
momimagesList ={'06-16-2016_23_06_13_top';'06-16-2016_23_05_18_top';'06-16-2016_23_04_24_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.6;
atomvary(3) = outp;
%0.4
momimagesList ={'06-16-2016_23_08_55_top';'06-16-2016_23_08_01_top';'06-16-2016_23_07_07_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.4;
atomvary(4) = outp;
%0.2
momimagesList ={'06-16-2016_23_13_42_top';'06-16-2016_23_12_49_top';'06-16-2016_23_11_55_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.2;
atomvary(5) = outp;
%0.1
momimagesList ={'06-16-2016_23_16_25_top';'06-16-2016_23_15_31_top';'06-16-2016_23_14_37_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.1;
atomvary(9) = outp;
%0.17
momimagesList ={'06-16-2016_23_30_53_top';'06-16-2016_23_29_58_top';'06-16-2016_23_21_58_top';'06-16-2016_23_21_04_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.17;
atomvary(6) = outp;
%0.15
momimagesList ={'06-16-2016_23_37_11_top';'06-16-2016_23_36_16_top';'06-16-2016_23_35_21_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.15;
atomvary(7) = outp;
%0.12
momimagesList ={'06-16-2016_23_39_56_top';'06-16-2016_23_39_01_top';'06-16-2016_23_38_06_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.12;
atomvary(8) = outp;
%0.07
momimagesList ={'06-16-2016_23_42_42_top';'06-16-2016_23_41_47_top';'06-16-2016_23_40_52_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',150,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.07;
atomvary(9) = outp;

figure
hold all
for i=1:length(atomvary)
    outp = atomvary(i);
    plot(outp.kzBin,outp.ffit,'DisplayName',strcat(['fit: T=',num2str(outp.T,'%2.2f'),'; kf=',num2str(outp.kF_Fit/1e6,'%2.2f')]))
    plot(outp.kzBin,outp.fk,'DisplayName',strcat(['evap=',num2str(outp.green,'%2.2f')]))
end


%% vary T:

bgimagesList={'06-16-2016_22_14_59_top';'06-16-2016_22_14_05_top';'06-16-2016_22_13_11_top';'06-16-2016_22_12_17_top';'06-16-2016_22_11_23_top';'06-16-2016_22_10_28_top';'06-16-2016_22_09_34_top'};

%hot
momimagesList ={'06-16-2016_21_46_12_top';'06-16-2016_21_45_18_top';'06-16-2016_21_44_23_top';'06-16-2016_21_43_29_top';'06-16-2016_21_42_34_top';'06-16-2016_21_38_11_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.2;
tvary(2) = outp;

%medium
momimagesList ={'06-16-2016_21_54_05_top';'06-16-2016_21_53_10_top';'06-16-2016_21_52_16_top';'06-16-2016_21_51_21_top';'06-16-2016_21_50_27_top';'06-16-2016_21_49_32_top';'06-16-2016_21_48_37_top';'06-16-2016_21_47_43_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.2;
tvary(3) = outp;

%cold
momimagesList ={'06-16-2016_22_02_30_top';'06-16-2016_22_01_36_top';'06-16-2016_22_00_42_top';'06-16-2016_21_59_48_top';'06-16-2016_21_58_54_top';'06-16-2016_21_58_00_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.2;
tvary(4) = outp;

%very hot

momimagesList ={'06-16-2016_22_33_46_top';'06-16-2016_22_32_51_top';'06-16-2016_22_31_56_top';'06-16-2016_22_31_02_top';'06-16-2016_22_30_07_top';'06-16-2016_22_29_13_top';'06-16-2016_22_28_18_top';'06-16-2016_22_27_24_top'};
outp=momentumfocusRV(momimagesList,bgimagesList,'Nbins',100,'SM',3, ...
'Fudge',1,'Nsat',750,'ROI1',[1,5,510,480],'volume',(70*1.39e-6*1.5)*pi*(125)*(90)*(1.022e-6)^2/4);
outp.green = 0.2;
tvary(1) = outp;


%plot all
figure
hold all
for i=1:length(tvary)
    subplot(1,length(tvary),i)
    outp = tvary(i);
    plot(outp.kzBin,outp.ffit,'LineWidth',2,'DisplayName',strcat(['fit: T=',num2str(outp.T,'%2.2f'),'; kf=',num2str(outp.kF_Fit/1e6,'%2.2f')]))
    ylim([-0.1 1.05])
    xlim([0 7e6])
    hold on
    plot(outp.kzBin,outp.fk,'r.','MarkerSize',10,'DisplayName','data')
end

%plot nofk=0
figure;
FDfun=@(P,k) P(1)*1./(exp(P(2)*(k.^2/P(3)-1))+1);
nofk0 =[];
ttf=[];
% yes yes i know there's probably a way to vectorize this
for i=1:length(tvary)
    P=tvary(i).Pfit;
    P(1)=1;
    nofk0 = [nofk0 FDfun(P,0)];
    FDfun(P,0)
    ttf = [ttf tvary(i).T];
end
    
plot(ttf,nofk0,'.')
hold all
f1 = @(x) 1./(1+exp(-(1./x)))

f = @(x) 1./(1+exp(-((1./x).*(1-((pi*x).^2)./12))))
plot(0:0.01:0.9,f(0:0.01:0.9))

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    