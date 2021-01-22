clear, close all

[srcimg, map] = imread('lena_g.bmp');
[hs, ws] = size(srcimg);
srcimg = double(srcimg);

subplot(2, 2, 1);
image(srcimg)
colormap(map);
title('original lena-g.bpm');

axis image

fil1 = [0 1 0;
        1 -4 1;
        0 1 0];

outimg1 = filter2(fil1, srcimg);
subplot(2, 2, 3);
image(outimg1 + 127)
colormap(map);
title('the result of Laplacian');
axis image

fil2 = [0 -1 0;
        -1 5 -1;
        0 -1 0];

outimg2 = filter2(fil2, srcimg);
subplot(2, 2, 4);
image(outimg2)
colormap(map);
title('the sharpened image by the Laplacian operation');
axis image
