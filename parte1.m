% Parte 1
clc
clear
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funcion 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N1 = [8,0];
D1 = [6,2];

% funcion de transferencia
H1 = tf(N1,D1);

% Informacion del sistema 1 con escalon
info1 = stepinfo(H1);

% ceros, polos y ganancia del sistema 1
[z1, p1, k1] = zpkdata(H1);

% datos sistema 1
disp("*****************************************")
disp("ceros del sistema 1 con lazo abierto")
disp(cell2mat(z1))
disp("polos del sistema 1 con lazo abierto")
disp(cell2mat(p1))
disp("ganancia estatica del sistema 1 con lazo abierto")
disp(k1)
disp("tiempo de estabilización del sistema 1 con lazo abierto")
disp(info1.RiseTime)

% Feedback
feed1 = feedback(H1,1);

% Informacion del sistema 1 en lazo con escalon
infoLazo1 = stepinfo(feed1);

% ceros, polos y ganancia del sistema 1 con lazo
[feedz1, feedp1, feedk1] = zpkdata(feed1);

% datos sistema 1 con lazo
disp("*****************************************")
disp("ceros del sistema 1 con lazo cerrado")
disp(cell2mat(feedz1))
disp("polos del sistema 1 con lazo cerrado")
disp(cell2mat(feedp1))
disp("ganancia estatica del sistema 1 con lazo cerrado")
disp(feedk1)
disp("tiempo de estabilización del sistema 1 con lazo cerrado")
disp(infoLazo1.RiseTime)


% Graficas

figure()
step(H1)
title("Respuesta al escalon de función de transferencia 1 lazo abierto")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla

figure()
step(feed1)
title("Respuesta al escalon de función de transferencia 1 lazo cerrado")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funcion 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


N2 = [5,7,1];
D2 = [1,6,3];

% funcion de transferencia
H2 = tf(N2,D2);

% Informacion del sistema 2 con escalon
info2 = stepinfo(H2);

% ceros, polos y ganancia del sistema 2
[z2, p2, k2] = zpkdata(H2);

% datos sistema 2
disp("*****************************************")
disp("ceros del sistema 2 con lazo abierto")
disp(cell2mat(z2))
disp("polos del sistema 2 con lazo abierto")
disp(cell2mat(p2))
disp("ganancia estatica del sistema 2 con lazo abierto")
disp(k2)
disp("tiempo de estabilización del sistema 2 con lazo abierto")
disp(info2.RiseTime)

% Feedback
feed2 = feedback(H2,1);

% Informacion del sistema 2 en lazo con escalon
infoLazo2 = stepinfo(feed2);

% ceros, polos y ganancia del sistema 2 con lazo
[feedz2, feedp2, feedk2] = zpkdata(feed2);

% datos sistema 2 con lazo
disp("*****************************************")
disp("ceros del sistema 2 con lazo cerrado")
disp(cell2mat(feedz2))
disp("polos del sistema 2 con lazo cerrado")
disp(cell2mat(feedp2))
disp("ganancia estatica del sistema 2 con lazo cerrado")
disp(feedk2)
disp("tiempo de estabilización del sistema 2 con lazo cerrado")
disp(infoLazo2.RiseTime)

figure()
step(H2)
title("Respuesta al escalon de función de transferencia 2 lazo abierto")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla

figure()
step(feed2)
title("Respuesta al escalon de función de transferencia 2 lazo cerrado")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla

