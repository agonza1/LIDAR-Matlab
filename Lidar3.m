Rpbl=3;
alphaA=3.91/39.12; %APROXIMO ALPHA TOTAL A ALPHA  AEROSOL
betaA=alphaA/25;
%betaM=(5.585*10^-3)/((8*pi)/3);
for R=1:150%indexar
if 30 >=R
u1=-2*alphaA*R/10;
P(R)=((k/(R/10)^2)*(betaA)*exp(u1))%lin
Pdb(R)=10*log10(P(R));
else
alphaM=(1.2569*10^-2)-(7.7599*10^-4)*R/10;
betaM= alphaM/((8*pi)/3);
%alphaM=5.584*10^-3;
u1=alphaA*Rpbl;
%u2=integral(alphaM,Rpbl,R);
%u2=alphaM*(R-Rpbl);
u2=(1.2569*10^-2)*((R/10)-Rpbl)+(7.7599*10^-4)*((R/10)^2-Rpbl^2)/2
P(R)=((k/(R/10)^2)*betaM*exp(-2*u1-2*u2))%lin
Pdb(R)=10*log10(P(R));
end
end
x=1:150
plot(x,Pdb,'-r')%logaritmico
grid on
hold on
Pbackdb=10*log10(Pback);
plot(x,Pbackdb,'-b')%semilog
