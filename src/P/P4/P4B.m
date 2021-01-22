clear, close all

Torigin = 0:0.1:10;
xorigin = 3 * sinc(Torigin-2.7) + sinc((Torigin-7.5)/2);

subplot(3, 1, 1);
plot(Torigin, xorigin, '+')
title('original signal')
grid on

T1 = 0:0.8:10;
xc = 3 * sinc(T1-2.7) + sinc((T1-7.5)/2);

subplot(3, 1, 2);
plot(T1, xc, '+');

ylabel('x')
xlabel('t (\times \pi)')
title('sampled signal')
grid on

T = 0:0.1:10;

A = 0;

for i = 1:13
    Y = xc(i)*sinc((T-T1(i))/0.8);
    A = A + Y;
end

subplot(3, 1, 3);
plot(T, A, '+');

ylabel('x')
xlabel('t (\times \pi)')
title('recovery signal')
grid on
