addpath('Library');
bgimages1={'03-22-2016_00_50_45_top';'03-22-2016_00_43_01_top';'03-21-2016_23_40_31_top'};
momimages1={'03-22-2016_01_00_49_top';'03-22-2016_00_59_54_top';'03-22-2016_00_58_23_top';'03-22-2016_00_57_28_top';'03-22-2016_00_56_10_top';'03-22-2016_00_55_16_top';'03-22-2016_00_54_22_top';'03-22-2016_00_53_27_top';'03-22-2016_00_52_33_top';'03-22-2016_00_51_39_top';'03-22-2016_00_49_50_top';'03-22-2016_00_48_56_top'};
%bgimages1={'03-19-2016_02_39_33_top';'03-19-2016_02_38_39_top';'03-19-2016_02_37_45_top';'03-19-2016_02_36_39_top'};
%momimages1={'03-19-2016_03_03_48_top';'03-19-2016_03_02_53_top';'03-19-2016_03_01_59_top';'03-19-2016_03_01_05_top';'03-19-2016_03_00_10_top';'03-19-2016_02_59_16_top';'03-19-2016_02_58_22_top';'03-19-2016_02_57_28_top';'03-19-2016_02_56_33_top';'03-19-2016_02_55_39_top';'03-19-2016_02_54_44_top';'03-19-2016_02_53_50_top';'03-19-2016_02_52_56_top';'03-19-2016_02_52_02_top';'03-19-2016_02_51_07_top';'03-19-2016_02_50_13_top';'03-19-2016_02_49_19_top';'03-19-2016_02_48_25_top';'03-19-2016_02_47_30_top'};
%%
output=momentumfocusRV(momimages1,bgimages1,'Nbins' ,50,'SM',2);
n=output{1};
kz=output{2}/1e6;
%%
Img=zeros(512,512);
[X,Y]=meshgrid(linspace(-10,10,512),linspace(-10,10,512));
mask=(X.^2+Y.^2)<25;
Img(mask)=1;
imagesc(Img);
%%
ImgFT=fft2(Img);
imagesc(abs(ImgFT));
caxis([0,100])
%%
Nimg=output.Nimg;
NFFT=fft2(Nimg);
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create image
image(Nimg,'Parent',axes1,'CDataMapping','scaled');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0.5 151.5]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0.5 481.5]);
box(axes1,'on');
axis(axes1,'ij');
% Set the remaining axes properties
set(axes1,'CLim',[-2 12],'DataAspectRatio',[1 1 1],'Layer','top');
xlim([0,146]);ylim([0,469])
%%
[Yrange,Xrange]=size(Nimg);
[X,Y]=meshgrid(1:Xrange,1:Yrange);
mask1=((X*2).^2+Y.^2)<70^2;
mask2=((X*2).^2+(Y-Yrange+1).^2)<70^2;
mask3=(((X-Xrange+1)*2).^2+(Y).^2)<70^2;
mask4=(((X-Xrange+1)*2).^2+(Y-Yrange+1).^2)<70^2;
NFFT_filter=NFFT*0;
NFFT_filter(mask1)=NFFT(mask1);
NFFT_filter(mask2)=NFFT(mask2);
NFFT_filter(mask3)=NFFT(mask3);
NFFT_filter(mask4)=NFFT(mask4);

imagesc(abs(NFFT_filter))
caxis([0,5000]);
%%
Nimg_filter=ifft2(NFFT_filter);
imagesc(real(Nimg_filter));
caxis([-2,12])
Nimg_filter=real(Nimg_filter);
%%
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create image
image(Nimg_filter,'Parent',axes1,'CDataMapping','scaled');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0.5 151.5]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0.5 481.5]);
box(axes1,'on');
axis(axes1,'ij');
% Set the remaining axes properties
set(axes1,'CLim',[-2 12],'DataAspectRatio',[1 1 1],'Layer','top');
xlim([0,146]);ylim([0,469])
%%
load('output.mat');
Img=output.Nimg;
Img_Filter=FourierFilter( Img,0.3 );
imagesc(Img_Filter)
caxis([-2,12])
