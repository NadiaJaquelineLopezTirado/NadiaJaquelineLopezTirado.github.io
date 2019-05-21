%%


%%

%%
syms t;
f=exp(-1*t).*heaviside(t);


%%
% Función de transferencia
disp('Funcion de transferrencia')
transferencia([2,2,1],[2,1])

%%
% Respuesta al impulso
disp('Respuesta al impulso')
laplace2016a([2,2,1],[2,1],[0,0],[0],dirac(t),10) %Con condiciones iniciales cero y entrada dirac(t)

%%
% Respuesta a entrada cero
disp('Respuesta a entrada cero')
laplace2016a([2,2,1],[0,0],[1,0],[0],f,10) %Con condiciones iniciales y entrada cero

%%
% Respuesta a estado cero
disp('Respuesta a estado cero')
laplace2016a([2,2,1],[2,1],[0,0],[0],f,10) %Con conddiciones iniciales cero y entrada f

%%
% Respuesta total
disp('Respuesta total')
laplace2016a([2,2,1],[2,1],[1,0],[0],f,10) %Condiciones iniciales y entrada f

%%
% Respuesta a escalón en condiciones cero
disp('Respuesta al escalón en estado cero')
laplace2016a([2,2,1],[2,1],[0,0],[0],heaviside(t),10)