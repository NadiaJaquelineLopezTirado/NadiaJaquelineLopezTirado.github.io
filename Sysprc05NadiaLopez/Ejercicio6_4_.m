function[]=Ejercicio6_4_()
d0=1/2;
dn=@(n)(1/(n*pi))*sin((n*pi)/2);
t0=-pi/2;
tf=3*pi/2;
f=@(t) 1.*(t>=(-pi/2) & t<(pi/2))+0.*(t>=(pi/2) & t<=(3*pi/2));
%f=@(t) 0.*(t>=-pi & t<=-pi/2) + 1.*(t>=(-pi/2) & t<(pi/2))+0.*(t>=(pi/2) & t<=(pi));
armo=15;
a=-9;
b=9;
sfc2(t0,tf,dn,d0,f,armo,a,b);
end