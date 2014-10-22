function [ answ ] = MFMN( binned_signal )
% Returns the mean amplitude spectrum in each bin calculated by FFT


[R, C] = size(binned_signal);
answ = zeros(1,C);
Fs = 2000; % Sampling frequency
L = R; % Number of samples
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
f = Fs/2*linspace(0,1,NFFT);
for i = 1:C
    Fy = abs(fft(binned_signal(:,i),NFFT)/L);
    answ(1,i) = sum(Fy.*f') / sum(Fy);
end

end
