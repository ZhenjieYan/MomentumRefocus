%%
addpath('Library')
ImgSim=fitsread('SimulatedData/04-20-2016_19_55_50_top.fits');
%%
momentumfocusRV({ImgSim},{},'Nbins' ,120,'SM',4,'ROI1',[180,5,150,480],'Fudge',1,'Nsat',inf);