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

%% T/T_F=0.15, kF 3.5
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