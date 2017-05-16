function [CM] = extract_cm(im, ngr_cm)
% EXTRACT_CM Extracts Color Moments (CM) features
% Copyright (C) 2007 Rajen Bhatt
% This program is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation; either version 2
% of the License, or (at your option) any later version.
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
% GNU General Public License for more details.
% You should have received a copy of the GNU General Public license
% along with this program; if not, write to the Free Software
% Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 
% 02110-1301, USA.
% Syntex: [CM] = extract_cm(im, ngr_cm), where
% im: Image in RGB format whose color moments features are required % to extract 
% ngr_cm : Grid partition constant for CM feature extraction
% CM : CM features 
% Rajen B. Bhatt, write to: rajen.bhatt@gmail.com
% New Delhi, INDIA

im = rgb2ycbcr(im);
im = double(im);
block_size = fix(size(im(:,:,1))/ngr_cm); %Size of each block for %CM features
for i=1:ngr_cm 
for j=1:ngr_cm 
ptr_cm = 6*(i*j-1)+1; %Pointer to locate Color Moments features in %CM vector
%Pointer to locate image blocks' pixels 
r = block_size(1)*(i-1)+1; 
c = block_size(2)*(j-1)+1; 
block = im(r:r+block_size(1)-1,c:c+block_size(2)-1,:); 
%3 blocks of block_size dimensions 
block = stats::concatRow(block); 
CM(ptr_cm:ptr_cm+2)=mean(block,2); 
%3 Mean values of Y, Cb, and Cr block 
CM(ptr_cm+3:ptr_cm+5)= var(block'); 
%3 Variances of Y, Cb, and Cr block 
end
end