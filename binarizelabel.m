g = importdata('labels5train.mat');
group = zeros(240,1);
for i = [1:240]
if g(i)==5
group(i)=1;
else
group(i)=0;
end
end