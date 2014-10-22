function [ answ ] = MMAV1( binned_signal )
% Calculates the weighted mean of the absolute values for k signals in i bins
% weight equals 1 if index of value in bin is in the middle of the bin
% (between .25 and .75 of the bin size) and .5 otherwise

[R, C] = size(binned_signal);
answ = zeros(1,C);

for i = 1:C
    sum = 0;
    for j =1:R
        if((j >= .25*R) && (j <= .75*R))
            w = 1;
        else
            w = .5;
        end
        sum = sum +(w*abs(binned_signal(j,i)));
    end
    answ(1,i) = (1/R)*sum;
end

end

