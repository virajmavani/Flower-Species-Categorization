clear;
clc;

src = imread('D:\Electronics\Machine Learning\FlowerClassification\Rufous_Hummingbird_0032_2546738115.jpg');
% fM=importdata('D:\Electronics\Machine Learning\FlowerClassification\102flowers\imagelabels.mat')
img = imresize(src, [256 256]);
% pause;
% kernel = imcrop(img, [1 1 7 255]);Rufous_Hummingbird_0032_2546738115.jpg
% kernel1 = imcrop(img, [1 1 255 7]);

% [h s v] = rgb2hsv(img);
% h = uint8(h*255);
% [hk sk vk] = rgb2hsv(kernel);
% [hk1 sk1 vk1] = rgb2hsv(kernel1);
% histhk = imhist(hk);
% histhk1 = imhist(hk1);
% l = length(histhk);
% for i=[1:length(histhk)]
	% if histhk(i)>0 || histhk1(i)>0
		% for r=[1:256]
			% for e=[1:256]
				% if h(r,e)==(i-1)
					% img(r,e,1)=0;
					% img(r,e,2)=0;
					% img(r,e,3)=0;
				% end
			% end
		% end
	% end
% end
% for i=[1:m]
	% if histsk(i)>0
		% for r=[1:480]
			% for e=[1:640]
				% if s(r,e)==(i-1)
					% img(r,e,1)=0;
					% img(r,e,2)=0;
					% img(r,e,3)=0;
				% end
			% end
		% end
	% end
% end
% test=imcrop(h, [1 1 7 7]);
% imshow(kernel)
% histh = imhist(h(246:254,396:404));
% d=pdist2(histh',histhk')
% img = hsv2rgb(imghsv);
% feature_img = sfta(img,10) ##########-----------------------------uncomment this to get features
% featureMatrix = [featureMatrix; feature_img];
imwrite(img,'D:\Electronics\Machine Learning\FlowerClassification\Bird3.jpg')



imshow(img)
% for j=[0:632]
	% for i=[0:472]
		% histh = imhist(h((1+i):(8+i),(1+j):(8+j),:));
		% d=pdist2(histh',histhk')
	% end
% end

