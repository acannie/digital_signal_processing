clear, close all

t0 = linspace(0, 0.5, 1024);

x = 4 * sin(2*pi*100*t0);

subplot(2, 1, 1);
plot(t0, x)
ylabel('x')
xlabel('f')
title('a graph of x = 4sin(2\pifn)')
axis([0 0.1 -5 5])
grid on

X = fft(x);
y = real(ifft(X));

subplot(2, 1, 2);
plot(t0, y, '+')
ylabel('y')
xlabel('t (\times \pi)')
title('the waveform obtained by inverse transformation')
axis([0 0.1 -5 5])
grid on