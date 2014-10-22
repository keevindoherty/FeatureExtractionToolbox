function [ answ ] = SSC( binned_signal, thresh )
% Number of slope sign changes of a signal
% 
% Returns the number of times the slope of the signal's
% sign changes and the absolute value of one of the slopes
% is greater than or equal to the threshold 'thresh'

[R, C] = size(binned_signal);
answ = zeros(1, C);
slopes = diff(binned_signal);


for i =1:C
    count = 0;
    for j = 1: R-2
        if((((slopes(j,i) > 0) && (slopes(j+1,i) < 0))...
                || ((slopes(j,i) < 0) && (slopes(j+1,i) > 0)))...
                && ((abs(slopes(j,i)) >= thresh)...
                || (abs(slopes(j+1,i)) >= thresh)))
        count = count + 1;
        end
    end
    answ(1,i) = count;
end


end

