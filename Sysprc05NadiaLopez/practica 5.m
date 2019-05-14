%% Pr�ctica 5: Seeeeeeeeeeeeeeeries de Fourier en tiempo continuo 
%
%% Portada
% <html>
% <div align="right">
% <IMG src="upiita-logo.png" width="100" height="95"/>
% </div>
% <div align="left">
% <IMG src="ipn.png" width="100" height="95"/>
% </div>
% <div align="center">
% <h2>INSTITUTO POLITECNICO NACIONAL</h2>
% <h2> UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIER�A Y TECNOLOG�AS AVANZADAS </h2>
% <h2> SE�ALES Y SISTEMAS </h2>
% </div>
% <div align="center">
% <p> Profesor: Dr. Rafael Martinez Martinez </p>
% <strong>INTEGRANTES DEL EQUIPO:</strong>
% <ol>
% <strong>L�PEZ TIRADO NADIA JAQUELINE</strong><br/> 
% <strong>HERN�NDEZ CASTILLO FRANCISCO</strong>
% </ol>
% <strong>Grupo 2TV1</strong><br/>
% </div>
% </html>


%% Objetivos
% Los objetivos son los siguientes:
%
% * Realizar gr�ficas de series de Fourier exponenciales y trigonom�tricas en tiempo continuo 
% * Manipulaci�n de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de se�ales continuasCalculo n�merico de los coeficientes de Fourier

%% Introducci�n
% Podemos computar DN num�ricamente usando la DFT (la transformada discreta de Fourier), que utiliza las muestras
% de una se�al peri�dica x (t) durante un per�odo.
% El intervalo de muestreo es T segundos. Por lo tanto, hay $N_0 = T_0/T$ n�mero de muestras en un 
% per�odo $T_0$. Para encontrar la relaci�n entre DN y las muestras de x (t),
% 
% $$ D_n= \frac{1}{T_0}\int_{T_0} X(t) e^(-jn\varpi kT) dt $$ 
% 
% $$\lim_{T \rightarrow 0} \frac{1}{N_0 T} \sum _{k=0}^{N_0}-1  X(kT)e^(-jn\varpi kT) T$$
% 
% $$\lim_{T \rightarrow 0}\frac{1}{N_0} \sum _{k=0}^{N_0}-1 X(kT)e^(-jn\varpi kT) $$
% 
% donde x (kT) es la muestra KTH de x (t) y
% 
% $$N_0 = \frac{T_0}{T}$$ 
% 
% $$\Omega_0 = \varpi_0 T = \frac{2\pi }{N_0}$$
% 
% En la pr�ctica, es imposible hacer $T \rightarrow 0$ . Podemos hacer T peque�o, pero no cero, lo que 
% provocar� que los datos aumenten sin l�mite.
% Por lo tanto, ignoraremos el l�mite en T con la comprensi�n impl�cita de que T es razonablemente
% peque�o. T distinto de cero dar� lugar a alg�n error computacional, que es inevitable en cualquier 
% evaluaci�n num�rica de una integral.El error resultante de T distinto de cero se denomina error de 
% aliasing. Por lo tanto, podemos expresar como:
% 
% $$D_n= \frac{1}{N_0} \sum _{k=0}^{N_0}-1 X(kT)e^(-jn\varpi kT) $$
%
% Ahora, $\Omega_0 N_0 = 2 ?$. Por lo tanto, ej $\Omega_0$ (k + N 0) = ej ? 0 k sigue que
% $$D_n+N_0=D_n$$
% La propiedad de periodicidad DN + N0 = DN significa que m�s all� de n = N0/2, los coeficientes
% representan los valores para n negativo.Por ejemplo, cuando $N_0 = 32, D17 = D-15, D18 = D-14,..., D31 
% = D-1$. El ciclo se repite de nuevo a partir de n = 32.
% Para este proposito necesitamos muestras de x (t) durante un per�odo a partir de t = 0. En este 
% algoritmo, tambi�n es preferible que $N_0$ sea una potencia de 2, que es $N_0 = 2^m$, donde m es
% un entero.


%% Desarrollo
%% Ejemplo 6.1
% Con serie y espectro trigonometrico, no es necesario entregar el c�digo, solo la aplicaci�n al problema especifico, debe de indicar la funci�n y los valores de sus coeficientes (sin incluir el procedimiento)
%%
% 
% 
% <<61.PNG>>
% 
% 

%% Ejemplo 6.2
% Con serie y espectro exponencial y A=3, no es necesario entregar el c�digo, solo la aplicaci�n al problema especifico, debe de indicar la funci�n y los valores de sus coeficientes (sin incluir el procedimiento)
%%
% 
% <<62.PNG>>
% 

%% Ejemplo 6.4
% Con serie y espectro exponencial, no es necesario entregar el c�digo, solo la aplicaci�n al problema especifico, debe de indicar la funci�n y los valores de sus coeficientes (sin incluir el procedimiento)
%%
% 
% <<64.PNG>>
% 

%% Ejercicio 6.5
% Con serie y espectro exponencial, no es necesario entregar el c�digo, solo la aplicaci�n al problema especifico, debe de indicar la funci�n y los valores de sus coeficientes (sin incluir el procedimiento)
%%
% 
% <<65.PNG>>
% 

%% Ejemplo 6.7
% Con serie y espectro exponencial y $T_0=3$ sin incluir la gr�fica de f, error ni energ�a del error, no es necesario entregar el c�digo, solo la aplicaci�n al problema especifico, debe de indicar la funci�n y los valores de sus coeficientes (sin incluir el procedimiento)
%%
% 
% <<67.PNG>>
% 

%% Elaboracion de codigo
% Elabore un c�digo similar al COMPUTER EXAMPLE C6.2 que se encuentra al final de la secci�n 6.2 de Lathi para el Ejempo 6.2 con los datos indicados anteriormente (no utilice inline)
%% Elabore un c�digo que implemente el algoritmo de trapecio compuesto
% Elabore un c�digo que implemente el algoritmo de trapecio compuesto para $n=15$, Utilice este c�digo para aproximar $D_0,...,D_4$ del ejemplo de la pr�ctica. Ahora implemente el c�digo COMPUTER EXAMPLE C6.4 que se encuentra al final de la secci�n 6.6 de Lathi, y calcule nuevamente el los coeficientes $D_0,...,D_4$ del ejemplo propuesto. Muestre una tabla que contenga los coeficientes mencionados calculados con los dos algoritmos y de forma exacta, �Qu� algortmo aproxima mejor a los coeficientes?, para esto compare los coefientes con el valor absoluto de la resta. 
% 
T_0 = pi; N_0 = 256; T = T_0/N_0; t = (0:T:T*(N_0-1))'; M = 10;
x = exp(-t/2); x(1) = (exp(-pi/2) + 1)/2;


figure(1)
D_n = fft (x)/N_0; n = [-N_0/2:N_0/2-1]';

for a = 1:1:5
mag_dft(a)=abs(fftshift(D_n(a)));
end
for a = 1:1:5
ang_dft(a)=angle(fftshift(D_n(a)));
end
mag_dft
ang_dft
clf; subplot (2, 2, 1); stem(n, abs(fftshift (D_n)),'k');
axis ([-M M -.1 .6]); xlabel('n'); ylabel('|D_n|');
subplot (2, 2, 2); stem(n, angle(fftshift(D_n)),'k');
axis([-M M -pi pi]); xlabel ('n'); ylabel('\angle D n [rad]');


T_0 = pi; N_0 = 256; T = T_0/N_0; W_0=2*pi/T_0; t = (0:T:T*(N_0-1))'; M = 10;

x_0 =@(t) exp(-t/2);
x_1 =@(t) exp(-t/2)*exp(-1j*W_0*t);
x_2 =@(t) exp(-t/2)*exp(-2j*W_0*t);
x_3 =@(t) exp(-t/2)*exp(-3j*W_0*t);
x_4 =@(t) exp(-t/2)*exp(-4j*W_0*t);


%%
% 
%  (n positiva) por trapecio compuesto
%  
% 


figure(2)
n=[0:1:4];
D_n=[trap_com(x_0,0,pi,pi/2)/T_0,trap_com(x_1,0,pi,pi/2)/T_0,trap_com(x_2,0,pi,pi/2)/T_0,trap_com(x_3,0,pi,pi/2)/T_0,trap_com(x_4,0,pi,pi/2)/T_0];
mag_trap=abs(D_n)
ang_trap=angle(D_n)

clf; subplot (2, 2, 1); stem(n, abs( (D_n)),'k');
axis ([-M M -.1 .6]); xlabel('n'); ylabel('|D_n|');
subplot (2, 2, 2); stem(n, angle((D_n)),'k');
axis([-M M -pi pi]); xlabel ('n'); ylabel('\angle D n [rad]');
hold on
%%
% 
% De acuerdo a Lathi, en el ejemplo 6.5, que se desarroll� en el R10, la
% serie de Fourier exponencial compleja tiene Dn:
% $\left.\frac{-1}{\pi (1/2+j2n)}e^{-(1/2+j2n)t}\right |_{t=0}^{\pi}$
% Para llegar al resultado m�s preciso, no se utiliz� el resultado final de
% Lathi que indica $\frac{0.504}{1+j4n}$. Sino que desarrollando, se
% encontr�: $\frac{-1}{\pi (1/2+j2n)}(e^{-\frac{\pi}{2}}-1)$
% 

for n=2:1:5
   mag_ex(n)=abs((-exp(-pi/2)+1)/(pi*(0.5+2j*(n-1)))); 
end
mag_ex(1)=abs((-exp(-pi/2)+1)/(pi*(0.5)));

for n=2:1:5
   ang_ex(n)=angle((-exp(-pi/2)+1)/(pi*(0.5+2j*(n-1)))); 
end
ang_ex(1)=angle((-exp(-pi/2)+1)/(pi*(0.5)));

T = table(mag_dft',ang_dft',mag_trap',ang_trap',mag_ex',ang_ex'); T(1:5,:);
T.Properties.RowNames = {'D0','D1','D2','D3','D4'};
T.Properties.VariableNames{'Var1'} = 'Abs_DFT';
T.Properties.VariableNames{'Var2'} = 'Ang_DFT';
T.Properties.VariableNames{'Var3'} = 'Abs_Trap_Com';
T.Properties.VariableNames{'Var4'} = 'Ang_Trap_Com';
T.Properties.VariableNames{'Var5'} = 'Abs_Exacto';
T.Properties.VariableNames{'Var6'} = 'Ang_Exacto'

%%
% 
% En su forma rectangular
% 


DFT=mag_dft.*exp(1j.*ang_dft);
TRAP=mag_trap.*exp(1j*ang_trap);
EXAC=mag_ex.*exp(1j*ang_ex);

D= table(DFT',TRAP',EXAC');
D.Properties.RowNames = {'D0','D1','D2','D3','D4'};
D.Properties.VariableNames{'Var1'} = 'Dn_por_DFT';
D.Properties.VariableNames{'Var2'} = 'Dn_por_Trap_comp';
D.Properties.VariableNames{'Var3'} = 'Dn_exacto'
%%
% 
% Comparaci�n
% 

DFT_EXAC=abs(EXAC-DFT);
TRAP_EXAC=abs(EXAC-TRAP);

CMP= table(DFT_EXAC',TRAP_EXAC');
CMP.Properties.RowNames = {'D0','D1','D2','D3','D4'};
CMP.Properties.VariableNames{'Var1'} = 'ERROR_DFT';
CMP.Properties.VariableNames{'Var2'} = 'ERROR_TRAP'

%%
% 
% Por lo tanto se puede ver que el algoritmo DFT es m�s preciso que el del
% trapecio compuesto, puesto que hubo menor error que el valor exacto.
% 

%%
% 
% <<71.PNG>>
% 
% <<72.PNG>>
% 




 

