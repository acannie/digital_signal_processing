clear, close all

t0 = linspace(0, 4*pi, 256);

t = linspace(0, 2, 256);

y0 = exp(-0.1*t0) .* cos(t0);
y1 = exp(0.0*t0) .* cos(t0);
y2 = exp(0.1*t0) .* cos(t0);

subplot(3,1,1);
plot(t, y0)
ylabel('y')
xlabel('t (\times \pi)')
title('sigma = -0.1')
grid on

subplot(3,1,2);
plot(t, y1)
ylabel('y')
xlabel('t (\times \pi)')
title('sigma = 0')
grid on

subplot(3,1,3);
plot(t, y2)
ylabel('y')
xlabel('t (\times \pi)')
title('sigma = 0.1')
axis([0 2 -5 5])
grid on