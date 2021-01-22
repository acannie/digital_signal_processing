clear, close all

t0 = linspace(0, 0.5, 1024);

xa = 4 * sin(2*pi*100*t0);
xb = xa + randn(size(t0));

Xa = fft(xa);
Xb = fft(xb);

y = real(ifft(Xa));

subplot(4, 1, 1);
plot(t0, xa, 'r+')
ylabel('x');
xlabel('t (\times \pi)');
title('a graph of the original waveform');
axis([0 0.1 -5 5]);
grid on

subplot(4, 1, 2);
plot(t0, xb, 'b+')
ylabel('x');
xlabel('t (\times \pi)');
title('a graph of the noised waveform');
axis([0 0.1 -5 5]);
grid on

subplot(4, 1, 3);
plot(t0, Xa, 'r+')
ylabel('X');
title('a graph of the Fourier transformed original waveform');
axis([0 0.5 -20 20]);
grid on

subplot(4, 1, 4);
plot(t0, Xb, 'b+')
ylabel('X');
title('a graph of the Fourier transformed noised waveform');
axis([0 0.5 -100 100]);
grid on
