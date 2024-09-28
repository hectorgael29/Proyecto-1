% ----- Función que define la dinámica del sistema -----
function dx = C_RLC(t, x)
    % Definimos nuestros parámetros
    R = 120;      % Ohms
    L = 8e-3;     % Henrios
    C = 0.1e-6;   % Faradios
    A = 0.001;    % Ancho de la onda
    T = 0.002;    % Periodo (s)
    % Generación manual de la onda cuadrada
    V1 = 12 * (mod(t, T) < A);  % Onda cuadrada con amplitud  y ancho A
    % Creamos la matriz de las variables de estado
    dx = zeros(2,1);
    % Definición dinámica del sistema (Representación de estados)
    dx(1) = x(2);
    dx(2) = (1/L) * ((-R*x(2)) - ((1/C)*x(1)) + V1);