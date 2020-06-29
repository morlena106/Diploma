glaz1 = imread('C:\mlab\ubiris1\UBIRIS_800_600\Sessao_1\61\Img_61_1_5.jpg')
glaz = rgb2gray(glaz1)
level = 0.25
glazBw = im2bw(glaz, level)
glazcanny1 = edge(glazBw,'canny',0.9, 10)
glazcanny = imfill(glazcanny1,'holes')
se = strel('disk',1)
glazcanny = imopen(glazcanny,se)
[B,L] = bwboundaries(glazcanny,'noholes');
figure, imshow(glaz1)
hold on
for k = 1:length(B)
   boundary = B{k};
   plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
end

