%% Práctica 6: Sistemas Diferenciales
%
%% Portada
%%
% <html>
% <div align="center">
% <img src="upiita.png"></br>
% <strong> INSTITUTO POLITÉCNICO NACIONAL </strong></br>
% <strong> UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS </strong></br></br></br>
% <strong><H1> SEÑALES Y SISTEMAS</H1></strong>
% </div>
% <div align="center"> 
% <FONT FACE="arial" SIZE=40 COLOR="black">
% <strong>Práctica 6 'Transformada de Laplace'</strong>
% </FONT>
% </div>
% <div align="center">
% <h3> Profesor: Dr. Rafael Martinez Martinez </h3>
% <h3> Integrantes del equipo: </h3>
% <h3>López Tirado Nadia Jaqueline</h3>
% <h3>Hernández Castillo Francisco</h3>
% <h3> Grupo 2TV1 </h3>
% </div>
% </html>
%% Introducción
%
% Segun la definicion de la funcion de transferenciatenemos que 
%
% $$ H(S)=\frac{P(S)}{Q(S)}$$
%
% Si escribimos la ecuacion diferencial $y''+2y'+2y=x'+2x$ la podemos
%
% reescribir de la siguiente forma: 
%
% $$(D^2 + 2D + 2)y(t)=(D+2) x(t)$$
%
% donde 
%
% $Q(D)= D^2+2D+$ y $P(D)=D+2$ 
%
% Entonces sustituyendo $S$ en $P(D)$ y $Q(D)$ y aplicando la formula  $H(S)=\frac{P(S)}{Q(S)}$
%
% La funcion de transferencia es la siguiente 
%
% $$ H(S)=\frac{P(S)}{Q(S)}=\frac{S+2}{S^2 + 2S +2}$$ 



%%
syms t;
f=exp(-1*t).*heaviside(t);


%% Muestra la función de transferencia del sistema
% Función de transferencia
disp('Funcion de transferrencia')
transferencia([2,2,1],[2,1])

%% Muestra la respuesta al impulso (simbólico, gráfica)
% Respuesta al impulso
disp('Respuesta al impulso')
laplace2016a([2,2,1],[2,1],[0,0],[0],dirac(t),10) %Con condiciones iniciales cero y entrada dirac(t)

%% Muestra la respuesta a entrada cero (simbólico, gráfica)
% Respuesta a entrada cero
disp('Respuesta a entrada cero')
laplace2016a([2,2,1],[0,0],[1,0],[0],f,10) %Con condiciones iniciales y entrada cero

%% Muestra la respuesta a estado cero (simbólico, gráfica)

% Respuesta a estado cero
disp('Respuesta a estado cero')
laplace2016a([2,2,1],[2,1],[0,0],[0],f,10) %Con conddiciones iniciales cero y entrada f

%% Muestra la respuesta total (simbólico, gráfica)
% Respuesta total
disp('Respuesta total')
laplace2016a([2,2,1],[2,1],[1,0],[0],f,10) %Condiciones iniciales y entrada f

%% La respuesta total al escalón con condiciones iniciales 0 (simbólico, gráfica)
% Respuesta a escalón en condiciones cero
disp('Respuesta al escalón en estado cero')
laplace2016a([2,2,1],[2,1],[0,0],[0],heaviside(t),10)
 

