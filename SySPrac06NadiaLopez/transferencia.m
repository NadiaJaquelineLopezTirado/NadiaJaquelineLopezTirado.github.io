function transferencia(a,b)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% ciy condiciones iniciales de la salida de  menor a mayor [y(0), y(0)^(n-1)]
% cix condiciones iniciales de la entrada de menor a meyor [x(0), x^(m-1)(0)]
% xi función de entrada en terminos de la variable simbolica t previamente
% declarada en el command window
% t0 tiempo final para graficar la solucion, la derivada, y la segunda 
% derivada 
% ejemplo: resolver y^(3)+y^(2)+2y^(1)+2y=3x^(2)-x^(1)+2x con y^(2)(0)=1 y^(1)=3
% y(0)=2, x(0)=0 x^(1)=1, x(t)=exp(-t)cos(t)u(t), para 10 segundos, se resuleve como
% syms t
% laplace2016a([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),10)
close all
tam=size(a);
tami=size(b);
syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*0);
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
   for k=1:i-1
       edi=edi-b(i)*(s^(i-1-k)*0);
   end
end
%mensaje('APLICAMOS TRANSFORMADA DE LAPLACE y subtituimos condiciones iniciales')

pretty(edd);
%disp('=')
pretty(edi);

%mensaje('SUBSTITUIMOS LA TRANSFORMADA DE LA ENTRADA')

syms t;
edi=subs(edi,X(s), laplace(dirac(t)));
pretty(edd);
%disp('=')
pretty(edi);

mensaje('DESPEJAMOS H(s)')

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
disp('H(s)=')
edd=solve(eq1, Yy);
pretty(edd)
end
function mensaje(texto)
disp( ' ')
disp(texto)
disp( ' ')
end
