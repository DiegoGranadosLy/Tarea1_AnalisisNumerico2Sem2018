%Tecnologico de Costa Rica
%Area Academica de Ingenieria en Computadores
%Analisis Numerico para Ingenieria
%Profesor: Dr.Pablo Alvarado Moya
%Estudiante: Diego Alonso Granados Ly
%Tarea 1

%%%%%%%%%%%%%%%%%%%%%%%%%Problema 1%%%%%%%%%%%%%%%%%%%%%%%%%%%

#disp("Problema 1: \n")
#x = input("Ingrese el valor de x: ");
#c = input("Ingrese el numero de cifras significativas: ");

%Parametros de salida
% v = valor estimado
% ev= error relativo porcentual verdadero
% ea= error relativo porcentual aproximado
% n = Numero de terminos de la serie de Taylor usado
%     usado para el calculo.

%Parametros de entrada
% x = Valor real de entrada
% c = Numero de cifras significativas
#function [v,ev,ea,n] = anpi_erf(x,c)
#  es=(0.5*(10^(2-c)));  % Umbral de Scarborough
#  erf_real   = erf(x);   %Valor Real
#  v_anterior =0;         %Valor anterior aproximado
#  v  = (2/sqrt(pi))*(((-1)^0)/factorial(0))*((x^(2*0+1))/(2*0+1));
#  ev = abs(erf_real-v)*100;       %Calculo del error verdadero
#  ea = abs((v-v_anterior)/v)*100; %Calculo del error aproximado
#  n = 1;                          % Numero de terminos (iteraciones)
  
#  while (es<ea)                     %Scarboough < error aproximado
#    v  += (2/sqrt(pi))*(((-1)^n)/factorial(n))*((x^(2*n+1))/(2*n+1));
#    ev = abs(erf_real-v)*100;       %Calculo del error verdadero
#    ea = abs((v-v_anterior)/v)*100; %Calculo del error aproximado
#    v_anterior = v;                 %Se actualiza el valor anterior
#    n+=1;                           %Incrementa un termino para 
#  endwhile                          %la siguiente iteracion.
#endfunction


#[v,ev,ea,n] =  anpi_erf(x,c)
#printf("Fin del ejercicio 1 \n");

%%%%%%%%%%%%%%%%%%%%%%%%%Problema 2%%%%%%%%%%%%%%%%%%%%%%%%%%%

#disp("\n Problema 2: \n")
%POR HACER

%%%%%%%%%%%%%%%%%%%%%%%%%Problema 3%%%%%%%%%%%%%%%%%%%%%%%%%%%

#disp("\n Problema 3: \n")

#disp("\n output_precision(30) incrementa la precision");
#disp(" de salida de las variables usadas");
#output_precision(30);
#disp("\n 0.1 con precision de float mas cercano representable");
#a=single(0.1)
#disp("\n 0.1 con precision de double mas cercano representable");
#b=double(0.1)
#disp("\n Diferencia no da cero por las representaciones numericas");
#disp(" de la presicion simple y double. Ambas tienen un delta diferente");
#disp(" es la diferencia mostrada en la resta.");
#double(a)-b

#printf("Fin del ejercicio 3 \n");
%%%%%%%%%%%%%%%%%%%%%%%%%Problema 4%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp("\n Problema 4: \n")
fod = input("Introducir 1 para float, 2 para double: ");

if (fod==1)
  printf("Precision simple (float) \n");
  a=single(input("Valor de a: "));
  b=single(input("Valor de b: "));
  c=single(input("Valor de c: "));
elseif (fod==2)
  printf("Precision doble (double) \n");
  a=double(input("Valor de a: "));
  b=double(input("Valor de b: "));
  c=double(input("Valor de c: "));
else
  printf("Precision simple por default \n");
  a=single(input("Valor de a: "));
  b=single(input("Valor de b: "));
  c=single(input("Valor de c: "));
endif


disp("\n Formula cuadratica tradicional \n")
x1 = (-b+sqrt((b^2-(4*a*c))))/(2*a)
x2 = (-b-sqrt((b^2-(4*a*c))))/(2*a)

disp("\n Formula cuadratica alternativa \n")
x1 = (-2*c)/(b+sqrt((b^2-(4*a*c))))
x2 = (-2*c)/(b-sqrt((b^2-(4*a*c))))

disp("\n La solucion con la formula alternativa");
disp("muestra un resultado mas exacto cuando");
disp("b^2 es mucho mayor a 4ac.")
