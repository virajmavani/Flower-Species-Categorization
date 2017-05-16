clc;

fileList = getImagesInDir('D:\Electronics\Machine Learning\FlowerClassification\102flowers\jpg5segmentnew');
feature_matrix = [];

for f=[1:length(fileList)]
	g = fileList(f);
	filepath = char(fullfile('D:\Electronics\Machine Learning\FlowerClassification\102flowers\jpg5segmentnew',g));
	src = imread(filepath);
	img = rgb2gray(src);
	glcm = graycomatrix(img);
	c = GLCM_Features1(glcm);
	feature_img = struct2array(c);
	feature_img(1)=100;
	feature_img(3)=100;
	feature_img(4)=100;
	feature_img(7)=100;
	feature_img(13)=100;
	feature_img(14)=100;
	feature_img(15)=100;
	feature_img(16)=100;
	feature_img(17)=100;
	feature_img(18)=100;
	feature_img(19)=100;
	feature_img(20)=100;
	feature_img(21)=100;
	feature_img(22)=100;
	feature_img = feature_img(feature_img~=100);
	feature_matrix = [feature_matrix; feature_img];
	disp(f)
end



save('features5wocolor.mat','feature_matrix','-mat')