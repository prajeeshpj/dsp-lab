N = input('Enter the filter order (N): ');  % Filter order input
fc = 0.3;  % Cutoff frequency (normalized to Nyquist frequency)

f = linspace(0, 1, 1024);  % Frequency range from 0 to 1 (Nyquist)

ideal_hp = fir1(N, fc, 'high', rectwin(N+1));  % Use rectwin for ideal case
[H_ideal, w] = freqz(ideal_hp, 1, f*pi);


hamming_window = hamming(N+1);
hp_hamming = fir1(N, fc, 'high', hamming_window);
[H_hamming, ~] = freqz(hp_hamming, 1, f*pi);


hanning_window = hanning(N+1);
hp_hanning = fir1(N, fc, 'high', hanning_window);
[H_hanning, ~] = freqz(hp_hanning, 1, f*pi);

rect_window = rectwin(N+1);
hp_rect = fir1(N, fc, 'high', rect_window);
[H_rect, ~] = freqz(hp_rect, 1, f*pi);

triangular_window = bartlett(N+1);
hp_triangular = fir1(N, fc, 'high', triangular_window);
[H_triangular, ~] = freqz(hp_triangular, 1, f*pi);

figure;
subplot(3,2,1);
plot(w/pi, abs(H_ideal));
title('Ideal High-Pass Filter');
xlabel('Normalized Frequency');
ylabel('Magnitude');

subplot(3,2,2);
plot(w/pi, abs(H_hamming));
title('High-Pass Filter with Hamming Window');
xlabel('Normalized Frequency');
ylabel('Magnitude');

subplot(3,2,3);
plot(w/pi, abs(H_hanning));
title('High-Pass Filter with Hanning Window');
xlabel('Normalized Frequency');
ylabel('Magnitude');

subplot(3,2,4);
plot(w/pi, abs(H_rect));
title('High-Pass Filter with Rectangular Window');
xlabel('Normalized Frequency');
ylabel('Magnitude');

subplot(3,2,5);
plot(w/pi, abs(H_triangular));
title('High-Pass Filter with Triangular Window');
xlabel('Normalized Frequency');
ylabel('Magnitude');
