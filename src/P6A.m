clear, close all

[srcimg1, map] = imread('noise01.bmp');
[hs1, ws1] = size(srcimg1);
srcimg1 = double(srcimg1);

subplot(2, 2, 1);
image(srcimg1)
colormap(map);
title('original noise01.bpm');
axis image

fil = zeros(3, 3);
for i = 1:3
    for j= 1:3
        fil(i, j) = 1/9;
    end
end

outimg1 = filter2(fil, srcimg1);
      
subplot(2, 2, 2);
image(outimg1)
colormap(map);
title('noise01.bpm with averaging filter');
axis image

[srcimg2, map] = imread('noise02.bmp');
[hs2, ws2] = size(srcimg2);
srcimg2 = double(srcimg2);

subplot(2, 2, 3);
image(srcimg2)
colormap(map);
title('original noise02.bpm');
axis image

outimg2 = filter2(fil, srcimg2);
      
subplot(2, 2, 4);
image(outimg2)
colormap(map);
title('noise02.bpm with averaging filter');
axis image