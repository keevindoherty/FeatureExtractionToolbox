function [ answ ] = MMAV2( binned_signal )
% MMAV1 with a continuous weighting window

[R, C] = size(binned_signal);
answ = zeros(1,C);

for i = 1:C
    sum = 0;
    for j =1:R
        if((j >= .25*R) && (j <= .75*R))
            w = 1;
        elseif(j < .25*R)
            w = (4*j)/R;
        else
            w = 4*(j-R)/R;
        end
        sum = sum +(w*abs(binned_signal(j,i)));
    end
    answ(1,i) = (1/R)*sum;
end

end
