clear, close all

[srcimg, map] = imread('lena_g.bmp');
[hs, ws] = size(srcimg);
srcimg = double(srcimg);

subplot(1, 2, 1);
image(srcimg)
colormap(map);
title('original lena-g.bmp');
axis image

fftimg = fft2(srcimg);

pwrimg = log(fftimg.*conj(fftimg));
outimg = fftshift(pwrimg);

subplot(1, 2, 2);
imagesc(outimg);
colormap(map);
title('the power spectrum');
axis image