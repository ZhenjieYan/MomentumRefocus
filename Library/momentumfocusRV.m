function output = momentumfocusRV(momimages,bgimages,varargin)
%% Calculate momentum focused profiles
% Inputs: momimages: a cell array of T/4 momentum space focused image filenames
%         bgimages: a cell array of no atoms image filenames for background sub
%         refimg: a single string of a juicy picture in the hybrid for cone correction
%         
% Optional inputs:
%         sm: smoothing. Use 4 or 5 for good results
%         nbins: number of bins in kz/kf squared space - 100 is good
%         
% Outputs:
%         output: a struct containing the following fields:
%             kz: kz in m^{-1}
%             profile: n(kz)
%             
%             kz_sq: kz/kf squared
%             nmeans: binned densities as a function of kz_sq
%             
%             k: k/kf 
%             nofk: n(k/kf)
%             nofkfit: the fermi dirac distribution fit to the data

%%
h=figure();
pixellength=1.39*10^(-6);
sigma0=0.215/2*10^(-12);
Nsat=330;
ROI1 = [205,5,150,480];
sm = 2;
nbins = 100;
CropTail=1;
IfPolySmooth=0;
IfTailTailor=1;
Fudge=2.62;
D=86.3;
H=28.7;
IfFourierFilter=0;
IfFourierFilterBG=0;
CutOffFactor=0.2;
Points=5;
orlder=2;
IfDerInd=0;
IfSpline=1;
SmoothingParam=1.2338479537501e-05;
Volume=pi/4*D^2*H*pixellength^3;
output.Volume=Volume;
for i =1:length(varargin)
    if ischar(varargin{i})
        switch varargin{i}
            case 'SM'
                sm=varargin{i+1};
            case 'Nbins' 
                nbins=varargin{i+1};
            case 'ROI1'
                ROI1=varargin{i+1};
            case 'IfTailTailor'
                IfTailTailor=varargin{i+1};
            case 'TailRange'
                Zrange=varargin{i+1};
                zmin=Zrange(1);
                zmax=Zrange(2);
                CropTail=0;
            case 'Fudge'
                Fudge=varargin{i+1};
            case 'IfFourierFilter'
                IfFourierFilter=varargin{i+1};
            case 'CutOffFactor'
                CutOffFactor=varargin{i+1};
            case 'IfPolySmooth'
                IfPolySmooth=varargin{i+1};
            case 'Points'
                Points=varargin{i+1};
            case 'Older'
                orlder=varargin{i+1};
            case 'Nsat'
                Nsat=varargin{i+1};
            case 'IfFourierFilterBG'
                IfFourierFilterBG=varargin{i+1};
            case 'SmoothingParam'
                SmoothingParam=varargin{i+1};
            case 'IfSpline'
                IfSpline=varargin{i+1};
        end
    end
end
%% Import functions and data
m= 9.96e-27;
omega = 2*pi*23.9;
hbar = 1.055e-34;
%% Average images
Nmom=length(momimages);
momavg=0;
MomImgPack=cell(Nmom,1);
for i=1:Nmom
    tic
    if isstr(momimages{i})
        [~,tempraw]=imagedata(momimages{i});
    else
        tempraw=momimages{i};
    end
    Ntemp=AtomNumber(tempraw,pixellength.^2,sigma0, Nsat);
    Ntemp=CleanImage(Ntemp);
    MomImgPack{i}=Ntemp;
    momavg=momavg+Ntemp;
    toc
end
momavg=momavg/Nmom;
output.MomImgPack=MomImgPack;

Nbg=length(bgimages);
BgPack=cell(Nbg,1);
bgavg=0;
for i=1:Nbg
    tic
    if isstr(bgimages{i})
        [~,tempraw]=imagedata(bgimages{i});
    else
        tempraw=bgimages{i};
    end
    Ntemp=AtomNumber(tempraw,pixellength.^2,sigma0, Nsat);
    Ntemp=CleanImage(Ntemp);
    BgPack{i}=Ntemp;
    bgavg=bgavg+Ntemp;
    toc
end
output.BgPack=BgPack;
bgavg=bgavg/Nbg;
if Nbg==0
    bgavg=0*momavg;
end

%% Crop Images
momavgcrop=imcrop(momavg,ROI1);
bgavgcrop=imcrop(bgavg,ROI1);

%%
if IfFourierFilterBG
    bgavgcrop=FourierFilter(bgavgcrop,CutOffFactor);
end
%% BG subtraction
momcrop=momavgcrop-bgavgcrop;
momcrop=momcrop*Fudge;

%% Do the Fourier Filter
if IfFourierFilter
    momcrop=FourierFilter(momcrop,CutOffFactor);
end

%% Get profiles
% n=sum(momcrop,2)';
n0=sum(momavgcrop,2)'*Fudge;
n1=sum(bgavgcrop,2)'*Fudge;
z=1:length(n1);
if IfSpline
    bgfitresult = bgsmoothfit (n1,SmoothingParam);
    n1=bgfitresult(z)';
end
n=n0-n1;
n(isnan(n))=0;
if IfTailTailor
    if CropTail
        h=figure();
        scatter(z,n,'DisplayName','After BG Subtraction');
        hold on
        plot(z,n0,'r.','DisplayName','Before BG Subtraction');
        plot(z,n1,'b.','DisplayName','BG Subtraction');
        hold off
        legend('show');
        questdlg('Now give the range for tail fitting');
        [x,y]=getpts(h);
        close(h);
        zmin=min(x);
        zmax=max(x);
    end
    n=TailTailor(n,z,zmin,zmax);
end
output.Nz=n;
output.zPixel=z;

%% Plot the Image
figure(1);
subplot(2,2,1); imagesc(momcrop); axis image; axis off
%colormap gray; 
caxis([-10,max(momcrop(:))]);
output.Nimg=momcrop;
% %% Correct for changing radius
% OUTP = LoSReconstructionTop(refimg,'cropset',{'rect',crop(1)+round(crop(3)/2),crop(2)+round(crop(4)/2),crop(3),crop(4)});
% areas = OUTP.xsection_area_px;
% output.totalatoms = sum(bgsub_profile);
% pxsize = (13e-4) / 9;
% areas = areas*(pxsize^2);
% volume = areas*pxsize;
% area_cor_profile = bgsub_profile./volume;
% n = area_cor_profile;

%% Get kz
z = pixellength *(1:length(n));
kz = m*omega*z/hbar;

%% Get the density and kF from the total atom number
Ntot=sum(n);
nintrap=Ntot/Volume;
kFn=(6*pi^2*nintrap)^(1/3);
output.Ntot=Ntot;
output.nintrap=nintrap;
output.kF_num=kFn;
%% Plot n vs kz
nvskzfit = plotnvskz(kz,n);
output.n=n;
output.nvskzfit=nvskzfit;
%% Get n1d(k) vs k^2 
mu=nvskzfit.mu*1e12;
k0=sqrt(abs(mu)); %sqrt(\mu)
kz0=nvskzfit.x0*1e6;
kz=kz-kz0;
% kmin=min(kz);kmax=max(kz);
% kgrid1=linspace(kmin,kmax,51);
% [kz,n,~,~ ]=BinGrid(kz,n,kgrid1,0 );

n1dz=n/pixellength;
n1dk=(n1dz/Volume)*hbar/(m*omega);
kzsq=kz.^2;

[kzsq,B]=sort(kzsq);
n1dk=n1dk(B);
if IfPolySmooth
    n1dk=PolySmooth(n1dk,kzsq,Points,orlder);
end
output.kz=kz;
output.n1dofk=n1dk;
output.n1dofz=n1dz;
output.kzsq=kzsq;

%% Bin n1d(kz^2) 
% kzsqBinGrid=linspace(0,max(sqrt(kzsq)),nbins+1).^2;


kzsqBinGrid=linspace(0,max(kzsq),nbins+1);


[ kzsqBin,n1dkBin,kzsqStd,n1dkStd ] = BinGrid( kzsq,n1dk,kzsqBinGrid,0 );
% kzsqBin=kzsq;
% n1dkBin=n1dk;
kzsqBin(isnan(n1dkBin))=[];n1dkBin(isnan(n1dkBin))=[];
kzsqStd(isnan(n1dkBin))=[];n1dkStd(isnan(n1dkBin))=[];
output.kzsqBin=kzsqBin;
output.n1dofkBin=n1dkBin;
output.kzsqStd=kzsqStd;
output.n1dkStd=n1dkStd;
%% Scale kz and plot vs kz^2
subplot(2,2,3);
scatter(kzsq,n1dk,'DisplayName','Unbinned');
hold on
plot(kzsqBin,n1dkBin,'r.-','DisplayName','Binned');
line([kFn^2,kFn^2],[min(n1dk),max(n1dk)],'DisplayName','kF from N_{tot}','color','c','LineWidth',2);
hold off
xlim([0,4.5*kFn^2]);
xlabel('k_z^2 (m^{-1})');
ylabel('n_{k,1D}');
legend('show');
%% Differentiate
[fk,fkStd]=FiniteD( kzsqBin,kzsqStd,n1dkBin,n1dkStd,sm );
fk=-8*pi^2*fk;
fkStd=-8*pi^2*fkStd;
subplot(2,2,4);
kzBin=sqrt(kzsqBin);
kzFit=kzBin/k0;
[P,ffit]=FDfit(kzFit,fk);
P(3)=P(3)*k0^2;
[EF_Fit,n_Fit,kF_Fit,beta]=GetEF(P);
T=1/(beta*EF_Fit);
%% Bin again
kzsqGrida=linspace(0,max(kzsq),nbins+1);
kzsqGridb=linspace(0,max(sqrt(kzsq)),nbins+1).^2;
kzsqBinGrid=[kzsqGrida(kzsqGrida<=kF_Fit^2),kzsqGridb(kzsqGridb>kF_Fit^2)];
[ kzsqBin,n1dkBin,kzsqStd,n1dkStd ] = BinGrid( kzsq,n1dk,kzsqBinGrid,0 );
kzsqBin(isnan(n1dkBin))=[];n1dkBin(isnan(n1dkBin))=[];
kzsqStd(isnan(n1dkBin))=[];n1dkStd(isnan(n1dkBin))=[];
output.kzsqBin=kzsqBin;
output.n1dofkBin=n1dkBin;
output.kzsqStd=kzsqStd;
output.n1dkStd=n1dkStd;

%% Do Differentiate again
[fk,fkStd]=FiniteD( kzsqBin,kzsqStd,n1dkBin,n1dkStd,sm );
fk=-8*pi^2*fk;
fkStd=-8*pi^2*fkStd;
subplot(2,2,4);
kzBin=sqrt(kzsqBin);
kzFit=kzBin/k0;
[P,ffit]=FDfit(kzFit,fk);
P(3)=P(3)*k0^2;
[EF_Fit,n_Fit,kF_Fit,beta]=GetEF(P);
T=1/(beta*EF_Fit);


%% do the derivitive on every individual image
if IfDerInd
    

end


%% plot the fermi-dirac distribution
errorbar(kzBin,fk,fkStd);
hold on
plot(kzBin,ffit,'DisplayName',['1/\beta\mu=',num2str(1/P(2)),'T/T_F=',num2str(T)]);
line([kFn,kFn],[0,1],'DisplayName','kF from N_{tot}','color','c','LineWidth',2);
line([kF_Fit,kF_Fit],[0,1],'DisplayName','kF from Fermi-Dirac','color','r','Linewidth',2)
legend('show')
hold off
title(['Additional prefactor =',num2str(P(1))]);
xlabel('k (m^{-1})');ylabel('n(k)');
output.kzBin=kzBin;
output.Pfit=P;
output.nfit=n_Fit;
output.EF_Fit=EF_Fit;
output.kF_Fit=kF_Fit;
output.beta=beta;
output.T=T;
output.fk=fk;
output.fkStd=fkStd;
end

function [k,nofk,fitresult] = plotnofk(kzsqedges,nmeans,sm)
%% plot nofk and try to fit
    nofk = -polydiff(kzsqedges,nmeans,sm,1);
    nofk = nofk/max(nofk);%% renormalize
    k = sqrt(kzsqedges);
    figure(1);subplot(2,2,4);
    plot(k,nofk,'r.','MarkerSize',10,'DisplayName',strcat('sm=',num2str(sm)))
    xlim([0 3])
    ylim([-.2 1.1])
    hold all
    
    [xData, yData] = prepareCurveData( k(2:end), nofk(2:end) );

    % Set up fittype and options.
    ft = fittype( 'a/(1+exp(beta*(x^2-mu)))', 'independent', 'x', 'dependent', 'y' );
    opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
    opts.Display = 'Off';
    opts.StartPoint = [0.258582251418772 18 0.593361860386109];

    % Fit model to data.
    [fitresult, ~] = fit( xData, yData, ft, opts );
    tovertf = 1/(fitresult.beta*fitresult.mu);
    plot(kzsqedges,fitresult(kzsqedges),'k','LineWidth',2,'DisplayName',strcat('T/T_F = ',num2str(tovertf,'%0.3f')) )
    legend('show')
    
    xlim([0 2])
    xlabel('k/k_F')
    ylabel('n(k)')
    set(gca,'FontSize',14)
    hold off
    
    hold off
end

function [kzedges,nmeans] = plotbinkz2(kz,n,nvskzfit,nbins)
%% Plot n vs kz^2

kz_scale = (kz-(nvskzfit.x0 *1e8))/(sqrt(nvskzfit.mu)*1e8);
kz_sq = kz_scale.^2;
figure(1);subplot(2,2,3);
plot(kz_sq,n,'.','DisplayName','raw')
hold all
[kzedges,nmeans] = binkz2(kz_sq,n,nbins);
plot(kzedges,nmeans,'k.-','LineWidth',1,'MarkerSize',10,'DisplayName','binned')
xlim([0 3])
ylabel('n [atoms/cm^{-3}/spin]')
xlabel('(k_z/k_F)^2')
set(gca,'FontSize',14)
legend('show')
hold off

% [xData, yData] = prepareCurveData( kz_sq, n );
% 
% % Set up fittype and options.
% ft = fittype( 'a*log(1+exp(beta*(mu-x)))+d', 'independent', 'x', 'dependent', 'y' );
% opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
% opts.Display = 'Off';
% opts.StartPoint = [0.2 2 0 4 5];
% 
% % Fit model to data.
% [fitresult, gof] = fit( xData, yData, ft, opts );



end

function [edges,nmeans] = binkz2(kz_sq,n,nbins)
%% bin in kz^2
[~,edges,bins] = histcounts(kz_sq,nbins);
edges = edges+ (edges(2)-edges(1))/2;
for i=1:length(edges)
    binlist = [];
    for j=1:length(n)
        if bins(j) == i
            binlist = [binlist,n(j)];
        end
    end
    nmeans(i) = mean(binlist);
end
end

function fitresult = plotnvskz(kz,n)
%% Plot n vs kz
    figure(1);subplot(2,2,2);
    kz = kz/1e6;
    plot(kz,n,'.','MarkerSize',10,'DisplayName','data')
    
    [xData, yData] = prepareCurveData( kz, n );
    % Set up fittype and options.
    ft = fittype( 'a*log(1+exp(beta*(mu-(x-x0)^2)))+d', 'independent', 'x', 'dependent', 'y' );
    opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
    opts.Display = 'Off';
    opts.StartPoint = [30 2 0 8 4];

    % Fit model to data.
    [fitresult, ~] = fit( xData, yData, ft, opts );
    tovertf = 1/(fitresult.beta*fitresult.mu);
    hold all
    % plot
    plot(kz,fitresult(kz),'k','LineWidth',2,'DisplayName',strcat('1/(\beta\mu) = ',num2str(tovertf,'%0.2f')))
    xlim([min(kz) max(kz)])
    xlabel('k_z [x 10^{6} m^{-1}]')
    ylabel('n (Atom per pixel)')
    set(gca,'FontSize',14)
%     kmin=min(kz);kmax=max(kz);
%     kgrid1=linspace(kmin,kmax,51);
%     kgrid2=linspace(kmin,kmax,101);
%     kgrid3=linspace(kmin,kmax,201);
%     [k1,n1,~,~ ]=BinGrid(kz,n,kgrid1,0 );
%     plot(k1,n1,'*','DisplayName','Nbin=50');
%     [k2,n2,~,~ ]=BinGrid(kz,n,kgrid2,0 );
%     plot(k2,n2,'DisplayName','Nbin=100');
%     [k3,n3,~,~ ]=BinGrid(kz,n,kgrid3,0 );
%     plot(k3,n3,'DisplayName','Nbin=200');
    legend('show')
    hold off
end

function bgfitresult = bgsmoothfit (bg_profile,SmoothingParam)

%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( [], bg_profile );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );
opts = fitoptions( 'Method', 'SmoothingSpline' );
opts.SmoothingParam = SmoothingParam;

% Fit model to data.
[bgfitresult, ~] = fit( xData, yData, ft, opts );

% figure(5)
% plot(xData,yData)
% hold all
% plot(bgfitresult)
end


