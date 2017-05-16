clear;
clc;

fileList = getImagesInDir('D:\Electronics\Machine Learning\FlowerClassification\102flowers\test5segmented');
% labels = importdata('D:\Electronics\Machine Learning\FlowerClassification\102flowers\labels5.mat');
for f=[1:length(fileList)]
	g = fileList(f);
	filepath = char(fullfile('D:\Electronics\Machine Learning\FlowerClassification\102flowers\test5segmented',g));
	src = imread(filepath);
	img = imresize(src, [256 256]);
	kernel = imcrop(img, [1 1 7 255]);
	kernel1 = imcrop(img, [1 1 255 7]);

	[h s v] = rgb2hsv(img);
	h = uint8(h*255);
	% s = uint8(s*255)
	% disp(h)
	% disp(s)
	[hk sk vk] = rgb2hsv(kernel);
	[hk1 sk1 vk1] = rgb2hsv(kernel1);
	histhk = imhist(hk);
	histhk1 = imhist(hk1);
	l = length(histhk);
	% disp(histhk(1))
	for i=[1:length(histhk)]
		if histhk(i)>5 || histhk1(i)>5
			for r=[1:256]
				for e=[1:256]
					if h(r,e)==(i-1)
						img(r,e,1)=0;
						img(r,e,2)=0;
						img(r,e,3)=0;
					end
				end
			end
		end
	end
	savepath = char(fullfile('D:\Electronics\Machine Learning\FlowerClassification\102flowers\test5segmentnew',g));
	imwrite(img,savepath);
	disp(f)
end