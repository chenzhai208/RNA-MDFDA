
close all; clear all;clc;

s1=readmatrix("rna-s4.csv");
s2=readmatrix("rna-s5.csv");
s3=readmatrix("rna-s6.csv");

%NOISE AND RANDOM WALK LIKE VARIATION IN A TIME SERIES_____________________
RW1=cumsum(s1-mean(s1));
RW2=cumsum(s2-mean(s2));
RW3=cumsum(s3-mean(s3));

%Plot_Fig1


%COMPUTING THE ROOT-MEAN-SQUARE VARIATION OF A TIME SERIES_________________
RMS_S1=sqrt(mean(s1.^2));
RMS_S2=sqrt(mean(s2.^2));
RMS_S3=sqrt(mean(s3.^2));

%Plot_Fig_RMS


%Computing H_______________________________________________________________

X1=cumsum(s1-mean(s1));
X2=cumsum(s2-mean(s2));
X3=cumsum(s3-mean(s3));
X1=transpose(X1);
X2=transpose(X2);
X3=transpose(X3);

%Plot_Fig_H;
clear X1,X2,X3;

%THE MULTIFRACTAL SPECTRUM OF TIME SERIES
X1=cumsum(s1-mean(s1));
X2=cumsum(s2-mean(s2));
X3=cumsum(s3-mean(s3));

X1=transpose(X1);
X2=transpose(X2);
X3=transpose(X3);

Plot_MultiF;