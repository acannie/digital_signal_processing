clear, close all

Torigin = 0:0.1:10;
xorigin = 3 * sinc(Torigin-2.7) + sinc((Torigin-7.5)/2);

subplot(3, 1, 1);
plot(Torigin, xorigin, '+')
title('original signal')
grid on

T2 = 0:1.2:10;
xc = 3 * sinc(T2-2.7) + sinc((T2-7.5)/2);

subplot(3, 1, 2);
plot(T2, xc, '+');

ylabel('x')
xlabel('t (\times \pi)')
title('sampled signal on T = 1.2')
%axis([-4 4 -10 10])
grid on

T = 0:0.1:10;

A = 0;

for i = 1:9
    Y = xc(i)*sinc((T-T2(i))/1.2);
    A = A + Y;
end

subplot(3, 1, 3);
plot(T, A, '+');

ylabel('x')
xlabel('t (\times \pi)')
title('recovery signal')
%axis([-4 4 -10 10])
grid on
