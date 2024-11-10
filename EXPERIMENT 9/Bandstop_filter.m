
N = input('Enter the filter order N: ');

f1 = 0.3; 
f2 = 0.6;  



hamming_window = fir1(N, [f1 f2], 'stop', hamming(N+1));
[h_hamming, w_hamming] = freqz(hamming_window, 1, 1024);


hanning_window = fir1(N, [f1 f2], 'stop', hanning(N+1));
[h_hanning, w_hanning] = freqz(hanning_window, 1, 1024);


rectangular_window = fir1(N, [f1 f2], 'stop', rectwin(N+1));
[h_rectangular, w_rectangular] = freqz(rectangular_window, 1, 1024);


triangular_window = fir1(N, [f1 f2], 'stop', bartlett(N+1));
[h_triangular, w_triangular] = freqz(triangular_window, 1, 1024);


figure;
subplot(2, 2, 1);
plot(w_hamming/pi, abs(h_hamming));
title('Bandstop Filter using Hamming Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');
grid on;

subplot(2, 2, 2);
plot(w_hanning/pi, abs(h_hanning));
title('Bandstop Filter using Hanning Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');
grid on;

subplot(2, 2, 3);
plot(w_rectangular/pi, abs(h_rectangular));
title('Bandstop Filter using Rectangular Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');
grid on;

subplot(2, 2, 4);
plot(w_triangular/pi, abs(h_triangular));
title('Bandstop Filter using Triangular Window');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');
grid on;
