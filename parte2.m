clc
clear
close all

s = tf("s");

H_1 = 4 * s/(10 * s^2 + 4);
H_2 = 3 / (6 * s + 16);
H_3 = (4 * s + 10) / (4 * s^3 + 9 * s^2 + 5 * s);
H_4 = 1 / (7 * s + 10);
H_5 = (8 * s + 8) / (s^3 + 2 * s^2 + 3 * s);
H_6 =(3 * s + 2) / (5 * s^2 + 7 * s + 10);


% Se presenta una retroalimentación unitaria positiva para H3
% se utiliza la siguiente transformación Ht = H3/(1-H3)

Ht_3 = H_3 / (1 - H_3);

% H4 y H5 se encuentran en paralelo se prodece con la suma de ambos

Hp_4_5 = H_4 + H_5;

% Hp_45 se encuentra en serie con Ht_3, se multiplican las funciones de
% transferencia

H_3_4_5 = Ht_3 * Hp_4_5;

% H_345 se encuentra en serie con H6, se multiplican las funciones de
% transferencia

H_3_4_5_6 = H_3_4_5 * H_6;

% H1, H2, y H_3456 se encuentran en paralelo, por ende se suman las
% funciones de transferencia

H = H_1 + H_2 + H_3_4_5_6;

% Se grafica la función resultante mediante uso de la función step
figure()
step(H)
title("Respuesta al escalon de funcion de transferencia")
ylabel("Amplitud")
xlabel("Tiempo")
grid on % activar grilla

% Se devuelve valor obtenido por la funcion de transferencia del sistema
H