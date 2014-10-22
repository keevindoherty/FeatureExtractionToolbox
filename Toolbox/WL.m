function [ answ ] = WL( binned_signal )
% Returns the waveform length for the signal in each bin

[R, C] = size(binned_signal);
answ = zeros(1, C);


for i =1:C
    len = 0;
    for j = 1: R-1
        len  = len + abs(binned_signal(j+1,i) - binned_signal(j,i));
    end
    answ(1,i) = len;
end


end