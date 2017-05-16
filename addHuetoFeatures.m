clc;

A = importdata('C:\Users\viraj\OneDrive\Documents\MATLAB\sftaalgo\features5wocolor.mat');

fileList = getImagesInDir('D:\Electronics\Machine Learning\FlowerClassification\102flowers\jpg5segmentnew');
color = zeros(240,6);
for f=[1:length(fileList)]
	g = fileList(f);
	filepath = char(fullfile('D:\Electronics\Machine Learning\FlowerClassification\102flowers\jpg5segmentnew',g));
	img = imread(filepath);
	% Extract RGB Channel
	R=img(:,:,1);
	G=img(:,:,2);
	B=img(:,:,3);
	% Extract Statistical features
	% 1] MEAN
	meanR=mean2(R);
	meanG=mean2(G);
	meanB=mean2(B);
	% 2] Standard Deviation
	stdR=std2(R);
	stdG=std2(G);
	stdB=std2(B);
	color(f,:)=[meanR meanG meanB stdR stdG stdB]; 
end
A = [A color];
save('features5color.mat','A','-mat')