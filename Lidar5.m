q=1.602*10^-19;
F=4.5;
B=10*10^6;
Rpbl=3;
for R=1:150
Sigmashs(R)=2*q*(GT^2)*(M^2)*Ri0*(P(R)+Pback)*L %^2
Sigmashd=2*q*(GT^2)*((7.64*10^-8)+F*(M^2)*(3.1*10^-10))
Sigmath=((5*10^-12)^2)*GT^2
SigmaT(R)=Sigmashs(R)+Sigmashd+Sigmath
SNRl(R)=(Rv*L*P(R))/((SigmaT(R)^(1/2))*B^(1/2))
SNR(R)=20*log10(SNRl(R))
end
grid on
plot(1:150,SNR,'-g');
%hold on
%semilogy(1:150,Sigmashs*B,'-r')%Sigmashot sensor
%hold on
%semilogy(1:150,Sigmashd*B,'--b')%Sigmashot dark Predomina
%hold on
%semilogy(1:150,Sigmath*B,'--g')%Sigma therm
%semilogy(1:150,(SigmaT*B))
