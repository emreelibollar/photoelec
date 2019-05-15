clc


y1=linfitxy(YesilVolt,YesilAkim,0,YesilSigma);
y2=linfitxy(YesilVoltEksi,YesilAkimEksi,0,YesilEksiSigma);
s1=linfitxy(SariVolt,SariAkim,0,SariiSigma);
s2=linfitxy(SariVoltEksi,SariAkimEksi,0,SariEksiSigma);
m1=linfitxy(MaviVolt,MaviAkim,0,MaviSigma);
m2=linfitxy(MaviVoltEksi,MaviAkimEksi,0,MaviEksiSigma);
k1=linfitxy(KirmiziVolt,KirmiziAkim,0,KirmiziSigma);
k2=linfitxy(KirmiziVoltEksi,KirmiziAkimEksi,0,KirmiziEksiSigma);


ay=(y2(2)-y1(2))./(y1(1)-y2(1));
as=(s2(2)-s1(2))./(s1(1)-s2(1));
am=(m2(2)-m1(2))./(m1(1)-m2(1));
ak=(k2(2)-k1(2))./(k1(1)-k2(1));

say=sqrt(((1/(y1(1)-y2(1)))*(3.2976e-14))^2+((1/(y1(1)-y2(1))*(1.4407e-14))^2+(((y2(2)-y1(2))/(y1(1)-y2(1))^2)*(7.44065e-14))^2+(((y2(2)-y1(2))/(y1(1)-y2(1))^2)*(2.6271e-14))^2))
sas=sqrt(((1/(s1(1)-s2(1)))*(1.1688e-14))^2+((1/(s1(1)-s2(1))*(3.6474e-14))^2+(((s2(2)-s1(2))/(s1(1)-s2(1))^2)*(3.4848e-14))^2+(((s2(2)-s1(2))/(s1(1)-s2(1))^2)*(8.7455e-14))^2))
sam=sqrt(((1/(m1(1)-m2(1)))*(5.1552e-14))^2+((1/(m1(1)-m2(1))*(3.9363e-13))^2+(((m2(2)-m1(2))/(m1(1)-m2(1))^2)*(5.2605e-14))^2+(((m2(2)-m1(2))/(m1(1)-m2(1))^2)*(3.7612e-13))^2))
sak=sqrt(((1/(k1(1)-k2(1)))*(1.4784e-15))^2+((1/(k1(1)-k2(1))*(4.046e-16))^2+(((k2(2)-k1(2))/(k1(1)-k2(1))^2)*(6.2442e-15))^2+(((k2(2)-k1(2))/(k1(1)-k2(1))^2)*(9.161e-16))^2))

y=[ak,as,ay,am];

sy=[sak,sas,say,sam]

linfitxy(X,y,0,sy)


(4.14-1.16)^2/(1.5)^2
