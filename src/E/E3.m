clear, close all

%input
[srcimg, map] = imread('girl.bmp');

srcimg = double(srcimg);
[hs, ws] = size(srcimg);

subplot(3, 4, 1)
image(srcimg)
colormap(map);
title('original image');
axis image

%make S tone curve
p = 0:255;
m = zeros(1, 256);
h = zeros(1, 256);

for i = 1:256
    m(i) = -cos(2*pi()*1/(256*2)*i);
end

subplot(3, 4, 2)
plot(p, m)
ylabel('Output pixel value');
xlabel('Input pixel value');
title('S tone curve');
axis([0, 256, -1, 1])

%change

outimg = zeros(hs, ws);
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

for j = 1:hs
    for i = 1:hs
        outimg(j, i) = 255 - outimg(j, i);
        m(outimg(j, i) + 1) = m(outimg(j, i) + 1) + 1;
    end
end

subplot(3, 4, 3)
image(outimg)
colormap(map);
title('transformed image');
axis image