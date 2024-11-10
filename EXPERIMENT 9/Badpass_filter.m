
N = input('Enter the filter order (N): ');

fs = 1000;                 
fpass = [100 300];        


wpass = fpass / (fs/2);


b_ideal = fir1(N, wpass, 'bandpass');


b_hamming = b_ideal .* hamming(N+1)';
b_hanning = b_ideal .* hann(N+1)';
b_rectangular = b_ideal .* rectwin(N+1)';
b_triangular = b_ideal .* triang(N+1)';


figure;
subplot(2, 2, 1);
freqz(b_hamming, 1, 1024, fs);
title('Bandpass Filter with Hamming Window');

subplot(2, 2, 2);
freqz(b_hanning, 1, 1024, fs);
title('Bandpass Filter with Hanning Window');

subplot(2, 2, 3);
freqz(b_rectangular, 1, 1024, fs);
title('Bandpass Filter with Rectangular Window');

subplot(2, 2, 4);
freqz(b_triangular, 1, 1024, fs);
title('Bandpass Filter with Triangular Window');
