function[]=Ejercicio6_5_()
d0=0.504;
dn=@(n) (0.504)/(1+(4*n*j));
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=15;
a=-9;
b=9;
sfc2(t0,tf,dn,d0,f,armo,a,b);
end