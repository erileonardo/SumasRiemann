% Octave Script
% Title       : Sumas de Riemann
% Description : Calcular el area bajo la curva de f(x)=x+1; [-2,3] 
% Author      : Erika Amairani Leonardo Arce
% Date        : 30 de Abril 2021
% Version     : 1
% Notes       : Sumas superiores

% limpiar variables
clear
function [int]=area(fun,a,b,n)
   f=inline(fun);
   %paso de la funcion
   h=(b-a)/n; % base de los rectangulos
   x=a:h:b; % numero de intervalos
   int=0;
   % inicia un ciclo
   for i=1:n
         % Calcular punto medio
         xn=(x(i)+x(i+1))/2;
         % valor del area del uno de los rectangulos
         int=int+f(xn)*h;
   end
