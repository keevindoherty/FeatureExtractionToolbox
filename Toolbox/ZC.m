function [ answ ] = ZC( binned_signal, thresh )
% Returns the number of times the signal amplitude in each bin crosses zero
% and the absolute difference in the values on each side of zero exceeds
% some threshold value thresh

[R, C] = size(binned_signal);
answ = zeros(1, C);


for i =1:C
    count = 0;
    for j = 1: R-1
        if((((binned_signal(j,i) > 0) && (binned_signal(j+1,i) < 0))...
                || ((binned_signal(j,i) < 0) && (binned_signal(j+1,i) > 0)))...
                && abs(binned_signal(j,i) - binned_signal(j+1,i)) >= thresh)
        count = count + 1;
        end
    end
    answ(1,i) = count;
end


end

