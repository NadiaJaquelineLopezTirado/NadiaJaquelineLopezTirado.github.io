function [inte,error]= trap_com(f,a,b,u)
%Primer argumento es una funci�n an�nima a la que se quiere encontrar la
%integral por aproximaci�n del trapecio compuesto.
%a,b: son el l�mete inferior y superios respectivamente, de la integraci�n.
%u: n�mero entre a y b que ajusta el error

suma=0;
n=15;
h=(b-a)/n;
ft=sym(f);
dd=diff(diff(ft));
ddf=matlabFunction(dd);
inte=(h/2)*(f(a)+f(b));
error=-(((b-a)/12)*h^2)*ddf(u);
for in=1:1:(n-1)
    xin=a+in*h;
    suma=suma+f(xin);
end
inte=inte+h*suma; 

end