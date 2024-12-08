%Ejercicio 1

numAl = 033135;

%se trae la senial del ejericio 1 y se grafica
[n,x] = senial(numAl); %senial e instantes a los que corresponde

figure;
stem(n,x); % gráfico de senial
title('Señal de variable independiente discreta');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');


%Se obtiene la TFTD y se grafica

X = TFTD(n,x); %obtenemos TFTD de la senial x

ds = 0.001; s = -0.5:ds:0.5;
%GRAFICO DE MODULO
figure;
subplot(2,1,1);
plot(s, abs(X));
title('Modulo de TFTD de senial x');
xlabel('s');
ylabel('|X(e^{j2πs})|');
%GRAFICO DE FASE
subplot(2,1,2);
plot(s, angle(X));
title('Fase de TFTD de senial x');
xlabel('s');
ylabel('Φ');
print -f2 -dpng figurita1;


%------------------------ INCISO 2 Y 3 ---------------
n = -20:20;
delta = zeros(size(n));
delta (n == 0) = 1;


% SISTEMA 1
figure;
%rta impulsional S1
h1 = sistema1(n, delta);

subplot(3,1,1);
stem(n,h1); % gráfico de h1
title('Respuesta impulsional h1');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');

%rta en frecuencia S1
H1 = TFTD(n,h1);
%MODULO
subplot(3,1,2);
plot(s,abs(H1));
title('Modulo de Respuesta en frecuencia H1');
xlabel('s');
ylabel('|H1(e^{j2πs})|');

%FASE
subplot(3,1,3);
plot(s,angle(H1));
title('Fase de Respuesta en frecuencia H1');
xlabel('s');
ylabel('Φ1');
print -f3 -dpng s1;

% SISTEMA 2
figure;
%rta impulsional S2
h2 = sistema2(n, delta);

subplot(3,1,1);
stem(n,h2); % gráfico de h2
title('Respuesta impulsional h2');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');

%rta en frecuencia S2
H2 = TFTD(n,h2);

%MODULO
subplot(3,1,2);
plot(s,abs(H2));
title('Modulo de Respuesta en frecuencia H2');
xlabel('s');
ylabel('|H2(e^{j2πs})|');

%FASE
subplot(3,1,3);
plot(s,angle(H2));
title('Fase de Respuesta en frecuencia H2');
xlabel('s');
ylabel('Φ2');
print -f4 -dpng s2;

%SISTEMA 3
figure;
%rta impulsional S3
h3 = sistema3(n, delta);

subplot(3,1,1);
stem(n,h3); % gráfico de h3
title('Respuesta impulsional h3');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');

%rta en frecuencia S3
H3 = TFTD(n,h3);

%MODULO
subplot(3,1,2);
plot(s,abs(H3));
title('Modulo de Respuesta en frecuencia H3');
xlabel('s');
ylabel('|H3(e^{j2πs})|');

%FASE
subplot(3,1,3);
plot(s,angle(H3));
title('Fase de Respuesta en frecuencia H3');
xlabel('s');
ylabel('Φ3');
print -f5 -dpng s3;

%SISTEMA 4
figure;
%rta impulsional S4
h4 = sistema4(n, delta);

subplot(3,1,1);
stem(n,h4); % gráfico de h4
title('Respuesta impulsional h4');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');

%rta en frecuencia S4
H4 = TFTD(n,h4);

%MODULO
subplot(3,1,2);
plot(s,abs(H4));
title('Modulo de Respuesta en frecuencia H4');
xlabel('s');
ylabel('|H4(e^{j2πs})|');

%FASE
subplot(3,1,3);
plot(s,angle(H4));
title('Fase de Respuesta en frecuencia H4');
xlabel('s');
ylabel('Φ4');
print -f6 -dpng s4;

%--------------------------INCISO 4--------------------------------
figure;
% obtener la senial de salida para cada sistema

[n,x] = senial(numAl); %me vuelvo a traer la senial

%SISTEMA 1 + grafico

s1 = sistema1(n,x); %respuesta del sistema uno con entrada senial
graficarRta(n,s1,1);


%SISTEMA 2 + grafico

s2 = sistema2(n,x); % respuesta sistema 2 con entrada senial
graficarRta(n,s2,2);


%SISTEMA 3 + grafico

s3 = sistema3(n,x); % respuesta sistema 3 con entrada senial
graficarRta(n,s3,3);

%SISTEMA 4 + grafico

s4 = sistema4(n,x); % respuesta sistema 4 con entrada senial
graficarRta(n,s4,4);

%-------------------------INCISO 5 --------------------
figure;
%obtener las tftd de las salidas

S1 = TFTD(n,s1);

%MODULO
subplot(4,2,1);
plot(s,abs(S1));
title('Modulo de S1');
xlabel('s');
ylabel('|S1(e^{j2πs})|');

%FASE
subplot(4,2,2);
plot(s,angle(S1));
title('Fase de S1');
xlabel('s');
ylabel('Φ');

S2 = TFTD(n,s2);

%MODULO
subplot(4,2,3);
plot(s,abs(S2));
title('Modulo de S2');
xlabel('s');
ylabel('|S2(e^{j2πs})|');

%FASE
subplot(4,2,4);
plot(s,angle(S2));
title('Fase de S2');
xlabel('s');
ylabel('Φ');


S3 = TFTD(n,s3);

%MODULO
subplot(4,2,5);
plot(s,abs(S3));
title('Modulo de S3');
xlabel('s');
ylabel('|S3(e^{j2πs})|');

%FASE
subplot(4,2,6);
plot(s,angle(S3));
title('Fase de S3');
xlabel('s');
ylabel('Φ');

S4 = TFTD(n,s4);

%MODULO
subplot(4,2,7);
plot(s,abs(S4));
title('Modulo de S4');
xlabel('s');
ylabel('|S4(e^{j2πs})|');

%FASE
subplot(4,2,8);
plot(s,angle(S4));
title('Fase de S4');
xlabel('s');
ylabel('Φ');
print -f8 -dpng plpl;
















