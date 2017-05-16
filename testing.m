% clc;
% clear all;

% A = importdata('features.mat');

% group = kmeans(A,5);

img = imread('D:\Electronics\Machine Learning\FlowerClassification\102flowers\test5segmentnew\60.jpg');
% fM=importdata('D:\Electronics\Machine Learning\FlowerClassification\102flowers\imagelabels.mat')
% img = imresize(src, [480 640]);
% pause;
% kernel = imcrop(img, [1 1 7 479]);
% kernel1 = imcrop(img, [1 1 639 7]);

% [h s v] = rgb2hsv(img);
% h = uint8(h*255);
% s = uint8(s*255)
% disp(h)
% disp(s)
% [hk sk vk] = rgb2hsv(kernel);
% [hk1 sk1 vk1] = rgb2hsv(kernel1);
% histhk = imhist(hk);
% histhk1 = imhist(hk1);
% l = length(histhk);
% disp(histhk(1))
% for i=[1:length(histhk)]
	% if histhk(i)>0 || histhk1(i)>0
		% for r=[1:480]
			% for e=[1:640]
				% if h(r,e)==(i-1)
					% img(r,e,1)=0;
					% img(r,e,2)=0;
					% img(r,e,3)=0;
				% end
			% end
		% end
	% end
% end
% b=0;
% [h s v] = rgb2hsv(img);
	% histh = imhist(h);
	% histh(1)=0;
	% for i=[1:256]
		% if histh(i)>b
			% b=i;
		% end
	% end
img = rgb2gray(img);
glcm = graycomatrix(img);
c = GLCM_Features1(glcm);
feature = struct2array(c);
feature = struct2array(c);
feature(1)=100;
feature(3)=100;
feature(4)=100;
feature(7)=100;
feature(13)=100;
feature(14)=100;
feature(15)=100;
feature(16)=100;
feature(17)=100;
feature(18)=100;
feature(19)=100;
feature(20)=100;
feature(21)=100;
feature(22)=100;
feature = feature(feature~=100);
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
feature=[feature meanR meanG meanB stdR stdG stdB];
% feature = [feature b b.^2];