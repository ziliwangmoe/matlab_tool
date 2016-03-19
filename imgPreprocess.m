Files = dir(fullfile('/Volumes/chamo/dataset/tianfu/vedio/','*.jpg'));
LengthFiles = length(Files);

for i = 1:300;
img = imread(strcat('/Volumes/chamo/dataset/tianfu/vedio/',Files(i).name));
img = rgb2gray(img);
img = imresize(img,[480 640]);
fileName = ['chamo_' num2str(i) '.png'];
imwrite(img, strcat('/Volumes/chamo/dataset/tianfu/vedio_d/',fileName));
end