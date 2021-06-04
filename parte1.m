% Parte 1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funcion 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N1 = [8,0];
D1 = [6,2];

% funcion de transferencia
H = tf(N1,D1);

% informacion del sistema para 
info = stepinfo(H);

% ceros y peak del sistema
[z,max] = zero(H);

% Polos funcion normal
polos1 = pole(H);

% Feedback
feed1 = feedback(H,1);

% Informacion del sistema en lazo con escalon
infoLazo = stepinfo(feed1);

% Ceros sitema con lazo
[zL,maxL] = zero(feed1);

% Polos sistema con lazo
polosLazo = pole(feed1);


% Graficas

figure()
step(H)
title("Respuesta al escalon de funcion de transferencia 1")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla

figure()
step(feed1)
title("Respuesta al escalon de funcion de transferencia con feedback 1")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funcion 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


N2 = [5,7,1];
D2 = [1,6,3];


H2 = tf(N2,D2);

info2 = stepinfo(H2);

[z2,max2] = zero(H2);

polos2 = pole(H2); 

feed2 = feedback(H2,1);

infoLazo2 = stepinfo(feed2);

[zL2,maxL2] = zero(feed2);

polosLazo2 = poles(feed2)

figure()
step(H2)
title("Respuesta al escalon de funcion de transferencia 2")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla

figure()
step(feed2)
title("Respuesta al escalon de funcion de transferencia con feedback 2")
ylabel("Amplitud")
xlabel("Tiempo(segundos)")
grid on % activar grilla
