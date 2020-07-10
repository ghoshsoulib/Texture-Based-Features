function [x] = GLCM_main(I)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
offsets = [0 1; -1 1; -1 0; -1 -1];
GLCM2 = graycomatrix(I,'NumLevels',8,'Offset',offsets);
out = GLCM_Features_new(GLCM2);

x1 = out.autoCorrelation;
x2 = out.clusterProminence;
x3 = out.clusterShade;
x4 = out.contrast;
x5 = out.correlation;
x6 = out.differenceEntropy;
x7 = out.differenceVariance;
x8 = out.dissimilarity;
x9 = out.energy;
x10 = out.entropy;
x11 = out.homogeneity;
x12 = out.informationMeasureOfCorrelation1;
x13 = out.informationMeasureOfCorrelation2;
x14 = out.inverseDifference;
x15 = out.maximumProbability;
x16 = out.sumAverage;
x17 = out.sumEntropy;
x18 = out.sumOfSquaresVariance;
x19 = out.sumVariance;

xa = [x1 x2 x3 x4 x5 x6 x7];
xb = [x8 x9 x10 x11 x12 x13 x14];
xc = [x15 x16 x17 x18 x19];

x = [xa xb xc];


end

