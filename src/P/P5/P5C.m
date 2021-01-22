clear, close all

%input
[srcimg, map] = imread('girl.bmp');

srcimg = double(srcimg);
[hs, ws] = size(srcimg);

%make tone curve
p = 0:255;
m = zeros(1, 256);
h = zeros(1, 256);

for i = 1:256
    m(i) = -(i-1)/2;
end



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
        outimg(j, i) = 255 * sqrt(outimg(j, i)/255);
    end
end

for j = 1:hs
    for i = 1:hs
        m(int16(outimg(j, i) + 1)) = m(int16(outimg(j, i) + 1)) + 1;
    end
end

subplot(2, 2, 1)
plot(p, 255 * sqrt(p/255))
axis([0 256 0 256])
ylabel('Output pixel value');
xlabel('Input pixel value');
title('tone curve of gamma correction');

subplot(2, 2, 3)
image(srcimg)
colormap(map);
title('the original image');
axis image

subplot(2, 2, 4)
image(outimg)
colormap(map);
title('the modified image');
axis image


subplot(2, 2, 2)
[hs, ws] = size(srcimg);
outimg = zeros(hs, ws);


p = 0:255;
h = zeros(1, 256);

bar(p, m)
colormap(map);
title('the histogram of modified image');

axis([0 256 0 1200])
ylabel('Frequency');
xlabel('Pixel value');
grid on