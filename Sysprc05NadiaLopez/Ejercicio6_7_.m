function[]=Ejercicio6_7_()
%%con T0=3
d0=1/3;
dn=@(n) 1/3;
t0=0;
tf=3;
%f=@(t)dirac(t);
f=@(t) 1.*(t==0)+0.*(t>=1 & t<=3)+1.*(t==3)+0.*(t>=3 & t<=6);

armo=15;
a=-7;
b=7;
sfc2(t0,tf,dn,d0,f,armo,a,b);

%figure(2)
%t=[-1:0.01:10]
%plot(t,f(t))
end