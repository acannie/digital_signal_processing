clear, close all

T = -4:0.1:4;

x1 = sinc((T-0)/1);
x2 = sinc((T-2)/0.8);

subplot(2, 1, 1);
plot(T, x1, '+')

ylabel('x')
xlabel('t (\times \pi)')
title('when tao = 0, T = 1')
grid on

subplot(2, 1, 2);
plot(T, x2, '+')

ylabel('x')
xlabel('t (\times \pi)')
title('when tao = 2, T = 0.8')
grid on