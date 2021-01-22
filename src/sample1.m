clear, close all
t0 = linspace(0, 2*pi, 256);
t = linspace(0, 2, 256);
y = cos(t0); 
plot(t,y)
ylabel('y')
xlabel('t (\times \pi)')
title('cos t')
axis([0 2 -1.5 1.5])
grid on