Fs=12;
% N=Fs*durata;
N=Fs/2;
n=randi([0 1],1,N);
subplot(2,1,1)
plot(n);
subplot(2,1,2)
stem(n);