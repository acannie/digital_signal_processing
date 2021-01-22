clear, close all

t = linspace(-10, 10);

y0 = 1 / (sqrt(2*pi) * 1) * exp(-(t-0).*(t-0)/(2*1^2));
y1 = 1 / (sqrt(2*pi) * 2) * exp(-(t-0).*(t-0)/(2*2^2));
y2 = 1 / (sqrt(2*pi) * 3) * exp(-(t-0).*(t-0)/(2*3^2));

plot(t, y0)
hold('on')

plot(t, y1)
hold('on')

plot(t, y2)
hold('on')

legend('y0: sigma = 1', 'y1: sigma = 2', 'y2: sigma = 3')

ylabel('y')
xlabel('t (\times \pi)')
title('p(x)')
axis([-10 10 -0.05 0.45])
grid on