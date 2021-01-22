clear, close all

[srcimg, map] = imread('lena_g.bmp');
[hs, ws] = size(srcimg);
srcimg = double(srcimg);

subplot(2, 1, 1);
image(srcimg)
colormap(map);
title('original lena-g.bpm');
axis image

fil1 = [-1 0 1;
        -1 0 1;
        -1 0 1];

fil2 = [-1 -1 -1;
        0 0 0;
        1 1 1];

fil12 = fil1.*fil1;
fil22 = fil2.*fil2;
    
fil = sqrt(fil12 + fil22);
outimg = filter2(fil, srcimg-127);

subplot(2, 1, 2);
image(outimg - 256)
colormap(map);
title('prewitt filter');
axis image

% subplot(2, 2, 2);
% gradI = sqrt(outimg1.*outimg1+outimg2.*outimg2);
% image(gradI)
% colormap(map);
% title('the magnitude of the gradient as am image');
% axis image

