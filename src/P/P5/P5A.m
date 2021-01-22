clear, close all

[srcimg, map] = imread('girl.bmp');
image(srcimg);

srcimg = double(srcimg);
[hs, ws] = size(srcimg);
outimg = zeros(hs, ws);

p = 0:255;
h = zeros(1,256);

for j = 1:hs
    for i = 1:hs
        outimg(j, i) = srcimg(j, i);
    end
end

for j = 1:hs
    for i = 1:ws
        h(srcimg(j, i) + 1) = h(srcimg(j, i) + 1) + 1;
    end
end

bar(p, h)
ylabel('Frequency');
xlabel('Pixel value');
title('Histogram of the pixel value');
grid on