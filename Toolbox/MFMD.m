function [ answ ] = MFMD( binned_signal )
% Returns the median amplitude spectrum in each bin calculated from fft


[R, C] = size(binned_signal);
answ = zeros(1,C);

L = R; % Number of samples
NFFT = 2^nextpow2(L); % Next power of 2 from length of y

for i = 1:C
    answ(1,i) = (1/2)*sum(abs(fft(binned_signal(:,i),NFFT)/L));
end

end

