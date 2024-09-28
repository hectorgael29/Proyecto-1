% ----- Función ode45 que resuelve numéricamente el sistema -----
[t,x] = ode45(@C_RLC, [0 0.001], [0 0]);
% ----- Graficamos fuera de la función -----
figure(1)
plot(t, x(:,1), 'b');
grid on
title("Voltaje del Capacitor");
xlabel("Tiempo");
ylabel("Voltaje");