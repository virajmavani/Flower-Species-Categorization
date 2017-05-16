clear;
clc;

fileList = getImagesInDir('D:\Electronics\Machine Learning\FlowerClassification\102flowers\jpg');
labels = importdata('D:\Electronics\Machine Learning\FlowerClassification\102flowers\imagelabels.mat');
i=1;
for f=[1:length(fileList)]
	g = fileList(f);
	filepath = char(fullfile('D:\Electronics\Machine Learning\FlowerClassification\102flowers\jpg',g));
	src = imread(filepath);
	img = imresize(src, [256 256]);
	
	if labels(f)<=5
		a = sprintf('%d.jpg', i);
		savepath = char(fullfile('D:\Electronics\Machine Learning\FlowerClassification\102flowers\jpg5',a));
		imwrite(img,savepath);
		i = i+1;
	end
	
end
% b = labels(labels<=5);
% disp(length(b))
% save('labels5.mat','b','-mat')