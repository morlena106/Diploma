glaz = imread('C:\mlab\ubiris2_2\CLASSES_400_300_Part2\C302_S1_I1.tiff')
level = 0.2
glazgray = rgb2gray(glaz)
glazBw = im2bw(glazgray, level)
glazcanny1 = edge(glazBw,'canny',0.9, 10 )
glazcanny = imfill(glazcanny1,'holes')
se = strel('disk',1)
glazcanny = imopen(glazcanny,se)
subplot(2,2,1), subimage(glaz)
subplot(2,2,2), subimage(glazBw)
%контур зрачка
[B,L] = bwboundaries(glazcanny,'noholes');
subplot(2,2,3), subimage(glaz)
hold on
for k = 1:length(B)
   boundary = B{k};
   plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
end
%координаты центра зрачка
subplot(2,2,4), subimage(glaz)
hold on
numObj = numel(s);
for k = 1 : numObj
    plot(s(k).WeightedCentroid(1), s(k).WeightedCentroid(2), 'r*')
    plot(s(k).Centroid(1), s(k).Centroid(2), 'bo')
end
hold off