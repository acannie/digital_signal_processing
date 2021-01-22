clear, close all

%input
[srcimg, map] = imread('girl.bmp');

srcimg = double(srcimg);
[hs, ws] = size(srcimg);

outimg = zeros(hs, ws);

%make tone curve
p = 0:255;
m = zeros(1, 256);
h = zeros(1, 256);

%change
for j = 1:hs
    for i = 1:ws
        outimg(j, i) = srcimg(j, i);
    end
end

b = max(outimg);
a = min(outimg);
aa = min(a);
bb = max(b);

for j = 1:hs
    for i = 1:ws
        h(srcimg(j, i) + 1) = h(srcimg(j, i) + 1) + 1;
    end
end

for j = 1:hs
    for i = 1:ws
        if outimg(j, i) < aa
            outimg(j, i) = 0;
        elseif outimg(j, i) >= bb
            outimg(j, i) = 255;
        else
            outimg(j, i) = 255 * (outimg(j, i) - aa) / (bb-aa);
        end
        m(int16(outimg(j, i) + 1)) = m(int16(outimg(j, i) + 1)) + 1;
    end
end
imwrite(outimg, map, 'girl_fc.bmp', 'bmp');

subplot(2, 2, 1)
image(srcimg)
colormap(map);
title('the original image');
axis image
x = zeros(1, 256);

for i = 1:hs
    if i < aa
       x(i) = 0;
    elseif i >= bb
       x(i) = 255;
    else
       x(i) = 255 * (i - aa) / (bb-aa);
    end
end

subplot(2, 2, 3);
plot(p, x(p+1))
ylabel('Output pixel value');
xlabel('Input pixel value');
title('tone curve of gamma correction');
axis([0 256 0 256]);

subplot(2, 2, 2);
[srcimg, map] = imread('girl_fc.bmp'); 
image(srcimg)
colormap(map);
title('the modified image');
axis image

% subplot(2, 2, 4); 
% bar(srcimg, 0.5)
% colormap(map);
% title('the histogram of modified image');
% axis image


