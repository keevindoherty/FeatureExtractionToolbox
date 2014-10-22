function [ answ ] = FR( binned_signal )
% Frequency Ratio
%
% Returns the ratio of the lowest frequency in a bin to the highest
% frequency in the bin

[R, C] = size(binned_signal);
answ = zeros(1,C);
L = R; % Number of samples
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
for i = 1:C
    Fy = abs(fft(binned_signal(:,i),NFFT)/L);
    answ(1,i) = min(Fy)/max(Fy);
end

end

