clear, close all

[srcimg1, map] = imread('noise01.bmp');
srcimg1 = double(srcimg1);

subplot(2, 2, 1);
image(srcimg1)
colormap(map);
title('original noise01.bpm');
axis image

outimg1 = medfilt2(srcimg1);
      
subplot(2, 2, 2);
image(outimg1)
colormap(map);
title('noise01.bpm with median filter');
axis image


[srcimg2, map] = imread('noise02.bmp');
srcimg2 = double(srcimg2);

subplot(2, 2, 3);
image(srcimg2)
colormap(map);
title('original noise02.bpm');
axis image

outimg2 = medfilt2(srcimg2);
      
subplot(2, 2, 4);
image(outimg2)
colormap(map);
title('noise02.bpm with median filter');
axis image
