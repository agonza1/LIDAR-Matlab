PRF=20;%Hz
for R=1:150
Tobs(R)=ceil(((2*10^3)/SNRl(R))^2)/PRF
end
plot(1:150,(Tobs),'-b')
%semilogy(1:150,(Tobs),'-b')