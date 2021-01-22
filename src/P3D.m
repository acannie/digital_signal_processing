clear, close all

n = linspace(0, 0.5, 1024);
x = 4 * sin(2*pi*100*n) + randn(size(n));

X = fft(x);
X = abs(X);

M = zeros(1, 1024);
M(44:55) = 1;
M(970:980) = 1;

Y = X.*M;
y = real(ifft(Y));

subplot(4,1,1);
plot(n, y, 'r+')
ylabel('y')
xlabel('t (\times \pi)')
title('a graph of the original amplitude spectrum')
axis([0 0.1 -5 5])
grid on

subplot(4,1,2);
plot(n, x, 'b+')
ylabel('y')
title('a graph of noised waveform')
axis([0 0.1 -5 5])
grid on


subplot(4,1,3);
plot(n, Y, 'r+')
ylabel('y')
xlabel('t (\times \pi)')
title('a graph of original amplitude spectrum')
axis([0 0.5 0 150])
grid on

subplot(4,1,4);
plot(n, X, 'b+')
ylabel('y')
title('a graph of the noised waveform')
axis([0 0.5 0 150])
grid on