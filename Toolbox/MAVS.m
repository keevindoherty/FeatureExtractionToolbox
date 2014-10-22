function [ answ ] = MAVS( mav_feat )
% Calculates the slope between MAV of binned signals
% output length is input length - 1

[R, C] = size(mav_feat);
answ = zeros(1, C-1);

for i =1:C-1
    answ(1, i) = mav_feat(i+1) - mav_feat(i);
end


end

