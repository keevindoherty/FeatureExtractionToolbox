function [ answ ] = MAV( binned_signal )
% Calculates the mean of the absolute values for k signals in i bins

[R C] = size(binned_signal);
answ = zeros(1,C);
for i = 1:C
    answ(1,i) = (1/R)*sum(abs(binned_signal(:,i)));
end

end

