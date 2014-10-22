function [ answ ] = FMD( binned_signal )
% Returns the median PSD in each bin

[R C] = size(binned_signal);
answ = zeros(1,C);
for i = 1:C
    answ(1,i) = (1/2)*sum(pwelch(binned_signal(:,i)));
end

end

