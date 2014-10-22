function [ out ] = bin_emg( signal )
% Breaks up EMG signal into 100 ms bins, creating disjoint segments

t = .0005; %sampling time constant .5 ms
frame_length = .1; %desired frame length 100 ms
n = frame_length/t; %num samples per frame
frames = length(signal)/n; %number of frames is the num of samples in signal/n samples per frame
out=zeros(n,frames); %preallocate the matrix for 20 colums of Nsamples/20 in each
for k=0:(frames-1)
    out(:,k+1)=signal(1+n*k:n*(k+1));
end
