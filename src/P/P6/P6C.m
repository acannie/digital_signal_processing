clear, close all

[srcimg, map] = imread('lena_g.bmp');
[hs, ws] = size(srcimg);
srcimg = double(srcimg);

subplot(2, 2, 1);
image(srcimg)
colormap(map);
title('original lena-g.bpm');
axis image

fil1 = [0 0 0;
        -1 0 1;
        0 0 0];

outimg1 = filter2(fil1, srcimg);
subplot(2, 2, 3);
image(outimg1 + 127)
colormap(map);
title('horizontal partial derivatives');
axis image

fil2 = [0 -1 0;
        0 0 0;
        0 1 0];

outimg2 = filter2(fil2, srcimg);
subplot(2, 2, 4);
image(outimg2 + 127)
colormap(map);
title('vertical partial derivatives');
axis image

subplot(2, 2, 2);
gradI = sqrt(outimg1.*outimg1+outimg2.*outimg2);
image(gradI)
colormap(map);
title('the magnitude of the gradient as am image');
axis image

