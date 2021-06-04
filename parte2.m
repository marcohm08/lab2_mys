% Parte 2

s = tf ('s');
Y1 = 4*s/(10*s^2 + 4);
Y2 = 3/(6*s + 16);
Y3 = (4*s + 10)/(4*s^3 + 9*s^2 + 5*s);
Y4 = 1/(7*s + 10);
Y5 =(8*s + 8)/(s^3 + 2*s^2 + 3*s);
Y6 = (3*s + 2)/(5*s^2 + 7*s + 10);

% Funcion de transferencia

H = (Y1*(1-Y3) + Y2*(1-Y3) + Y3 * Y6 * (Y4 + Y5))/(1-Y3);


figure()
step(H)
title("Respuesta al escalon de funcion de transferencia")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla
