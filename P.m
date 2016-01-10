function P=P(R)
k=0.0012;
Rpbl=3;
alphaA=3.91/39.12; %APROXIMO ALPHA TOTAL A ALPHA  AEROSOL
betaA=alphaA/25;
betaM=(5.585+10^-3)/((8*pi)/3);
if 3 >=R
u1=-2*alphaA*R;
P=(k/R^2)*betaA*exp(u1);
else
alphaM=@(R)(1.2569*10^-2)-(7.7599*10^-4)*R;
%betaM= alphaM(R)/((8*pi)/3);
u1=-2*alphaA*R;
u2=integral(alphaM,Rpbl,R);
P=(k./R^2)*betaM*exp(u1-2*u2(R));
end
end
