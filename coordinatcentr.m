glaz1 = imread('C:\mlab\ubiris1\UBIRIS_800_600\Sessao_1\61\Img_61_1_5.jpg')
glaz = rgb2gray(glaz1)
level = 0.25
glazBw = im2bw(glaz, level)
glazcanny1 = edge(glazBw,'canny',0.9, 10)
glazcanny = imfill(glazcanny1,'holes')
se = strel('disk',1)
glazcanny = imopen(glazcanny,se)
s = regionprops(glazcanny,glaz,{'Centroid','WeightedCentroid'})
imshow(glaz1)
hold on
numObj = numel(s);
for k = 1 : numObj
    plot(s(k).WeightedCentroid(1), s(k).WeightedCentroid(2), 'r*')
    plot(s(k).Centroid(1), s(k).Centroid(2), 'bo')
end
hold off

