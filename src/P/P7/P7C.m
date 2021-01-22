clear, close all

[srcimg, map] = imread('lena_g.bmp');
srcimg = double(srcimg);
[hs, ws] = size(srcimg);

subplot(2, 3, 1);
image(srcimg)
colormap(map);
title('original lena-g.bpm');
axis image

% w = 10

fil1 = zeros(hs, ws);
fil1(1:256, 1:256) = 1;
fil1(124:133, 124:133) = 0;
    
fftimg = fft2(srcimg);
fftimg = fftshift(fftimg);

decimg1 = fftimg.*fil1; 
decimg1 = fftshift(decimg1);
outimg1 = ifft2(decimg1); 
outimg1 = sqrt(outimg1.*conj(outimg1));

subplot(2, 3, 4);
imagesc(outimg1)
colormap(map);
title('t = 10');
axis image

% w = 50

fil2 = zeros(hs, ws);
fil2(1:256, 1:256) = 1;
fil2(104:153, 104:153) = 0;

decimg2 = fftimg.*fil2; 
decimg2 = fftshift(decimg2);
outimg2 = ifft2(decimg2); 
outimg2 = sqrt(outimg2.*conj(outimg2));
    
subplot(2, 3, 5);
imagesc(outimg2);
colormap(map);
title('t = 50');
axis image 

% w = 100

fil3 = zeros(hs, ws);
fil3(1:256, 1:256) = 1;
fil3(79:178, 79:178) = 0;

decimg3 = fftimg.*fil3; 
decimg3 = fftshift(decimg3);
outimg3 = ifft2(decimg3); 
outimg3 = sqrt(outimg3.*conj(outimg3));
    
subplot(2, 3, 6);
imagesc(outimg3);
colormap(map);
title('t = 100');
axis image