%MAIN DEL EJERCICIO 2

%------------------------INCISO 1---------------
% Graficamos la respuesta al impulso hA[n]
numAl = 033135;
[n,h] = hcanald(numAl);

%esto se puede modularizar
subplot(2,1,1);
stem(n,h);
xlabel("Instantes n");
ylabel("Amplitud");
title('Respuesta impulsional hA original');
print -f1 -dpng p1

%----------------------INCISO 2------------------


delta = zeros(length(n));
delta (n == 0) = 1;

%verificamos que la rta impulsional es igual a la h2
hA = ecuacionEnDiferencias(n,delta);

subplot(2,1,2);
stem(n,hA);
title('Respuesta impulsional hA');
xlabel('Instantes n');
ylabel('Amplitud');
print -f1 -dpng p2
pause(1);
%-----------------INCISO 3------------------
figure;
[x, fs] = audioread('audio.wav'); % x:audio, fs:frecuencia de muestreo
subplot(2,1,1);
plot(x);
title('Audio original');
xlabel('Tiempo (t)');
ylabel('Amplitud (x)');

%sound(x,fs); %para escuchar

%salida del sistema aplicando sistema con ecuacionEnDiferencias
y = ecuacionEnDiferencias(0:length(x),x); %ingreso del audio al sistema
sound(y, fs); %se escucha con eco

subplot(2,1,2);
plot(y); % graficamos señal de salida
xlabel("Tiempo(t)");
ylabel(" amplitud y");
title("Audio ingresado al sistema");
print -f2 -dpng p3
pause(3);
%---------------------INCISO 4---------------------
n = 0:length(x);
##%corregir el efecto que introduce el canal --> filtro FIR en cascada con el canal

%Respuesta impulsional original
hA = ecuacionEnDiferencias(n,delta);
figure;
subplot(4,1,1);
stem(n,hA);
title('Respuesta impulsional hA');
xlabel('Instantes n');
ylabel('Amplitud');

%Respuesta impulsional con filtro de 1 rama
hf1 = filtroDe1Rama(n,hA);
subplot(4,1,2);
stem(n,hf1);
title('Respuesta hA con una rama');
xlabel('Instantes n');
ylabel('Amplitud');


hf2 = filtroDe2Ramas(n,hA);
subplot(4,1,3);
stem(n,hf2);
title('Respuesta hA con dos ramas');
xlabel('Instantes n');
ylabel('Amplitud');


hf3 = filtroDe3Ramas(n,hA);
subplot(4,1,4);
stem(n,hf3);
title('Respuesta hA con tres ramas');
xlabel('Instantes n');
ylabel('Amplitud');

print -f3 -dpng p4

%--------------------INCISO 5----------------------------


figure;
%grafico del sonido con ecos original
subplot(4,1,1);
plot(y);
title('Audio sin corregir');
xlabel('Tiempo (t)');
ylabel('Amplitud');

yf1 = filtroDe1Rama(n,y);
sound(yf1, fs);
%grafico
subplot(4,1,2);
plot(yf1);
title('Audio corregido con una rama');
xlabel('Tiempo(t)');
ylabel('Amplitud');

yf2 = filtroDe2Ramas(n,y);
sound(yf2, length(x));
%grafico
subplot(4,1,3);
plot(yf2);
title('Audio corregido con dos ramas');
xlabel('Tiempo(t)');
ylabel('Amplitud');

yf3 = filtroDe3Ramas(n,y);
sound(yf3, length(x));
%grafico
subplot(4,1,4);
plot(yf3);
title('Audio corregido con tres ramas');
xlabel('Tiempo(t)');
ylabel('Amplitud');

print -f4 -dpng p5





















