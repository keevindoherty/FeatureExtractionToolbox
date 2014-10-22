function [ answ ] = SSI( binned_signal )
% Returns the sum of the squares of k elements in bin i of the
% signal

[R C] = size(binned_signal);
answ = zeros(1,C);

for i = 1:C
    answ(1,i) = sum((binned_signal(:,i).^2));
end

end