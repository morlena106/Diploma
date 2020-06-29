glaz = imread('C:\mlab\ubiris1\UBIRIS_800_600\Sessao_1\195\Img_195_1_3.jpg')
level = 0.6
%glaz = rgb2gray(glaz)
%glaz = imadjust(glaz)
glazBw = im2bw(glaz, level)
bw = rgb2gray(glaz);
glazBw2 = imbinarize(bw);
subplot(1,2,1), subimage(glazBw)
title('im2bw')
subplot(1,2,2), subimage(glazBw2)
title('imbinarize')