glaz = imread('C:\mlab\ubiris1\UBIRIS_800_600\Sessao_1\61\Img_61_1_5.jpg')
level = 0.25
%glaz = rgb2gray(glaz)
%glaz = imadjust(glaz)
glazBw = im2bw(glaz, level)
glazcanny1 = edge(glazBw,'canny',0.9, 10 )
glazcanny = imfill(glazcanny1,'holes')
se = strel('disk',1)
glazcanny = imopen(glazcanny,se)
%вывод
subplot(2,2,1), subimage(glaz)
subplot(2,2,2), subimage(glazBw)
subplot(2,2,3), subimage (glazcanny1)
subplot(2,2,4), subimage (glazcanny)




