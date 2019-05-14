function[]=piloto_6_1()
d0=0.5043;
a=-9;
b=9;
t0=0;
tf=pi;
f=@(t) exp(-t/2).*(t>=0 & t<=pi);
cn=@(n) 0.5043*(2/(1+(16*n^2)^(1/2)));
tn=@(n)-atan(4*n);
armo=15;
so=@(t) f(t)+f(t+pi)+f(t+(2*pi))+f(t+(3*pi))+f(t-pi)+f(t-(2*pi))+f(t-(3*pi));
sfc_6_1(t0,tf,cn,d0,so,armo,a,b,tn)
end