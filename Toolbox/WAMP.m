function [ answ ] = WAMP( binned_signal, thresh )
% Calculates the Willison amplitude (WAMP) of a bin
%
% WAMP equals the number of times the absolute difference between 
% two consecutive EMG samples exceeds a predetermined threshold


[R, C] = size(binned_signal);
answ = zeros(1, C);
absdiff = abs(diff(binned_signal));


for i =1:C
    count = 0;
    for j = 1: R-2
        if(absdiff(j,i) >= thresh)
        count = count + 1;
        end
    end
    answ(1,i) = count;
end


end

