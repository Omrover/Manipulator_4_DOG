clc;
clear;
close all;


%% =========================
% PARAMETROS DEL ROBOT
% =========================

l1 =  0.031+0.03885;
l2 = 0.4;
l3 = 0.095;
l4 = 0.100;
l5 = 0.050;

C = sqrt(l3^2 + l4^2);
phi = acos(l4/C);
gamma = pi + phi;


%% =========================
% LIMITES ARTICULARES
% =========================
% Cambia estos valores por los limites reales de tu robot

q1_lim = deg2rad([-180 180]);
q2_lim = deg2rad([0 180]);
q3_lim = deg2rad([-180 0]);
q4_lim = deg2rad([-(90-phi) phi]);


%% =========================
% MUESTREO
% =========================

N = 30;

q1_values = linspace(q1_lim(1), q1_lim(2), N);
q2_values = linspace(q2_lim(1), q2_lim(2), N);
q3_values = linspace(q3_lim(1), q3_lim(2), N);
q4_values = linspace(q4_lim(1), q4_lim(2), N);


%% =========================
% MATRIZ PARA GUARDAR
% =========================

P = zeros(N^4,3);

contador = 1;


%% =========================
% RECORRER TODAS LAS
% CONFIGURACIONES
% =========================

for i = 1:N

    for j = 1:N

        for k = 1:N

            for m = 1:N

                q1 = q1_values(i);
                q2 = q2_values(j);
                q3 = q3_values(k);
                q4 = q4_values(m);

                %% Tabla DH

                DH = [q1       l1   0    pi/2;
                      q2       0    l2   0;
                      q3-phi   0    -C   0;
                      q4+gamma 0    l5   0];


                %% Cinematica directa

                T = eye(4);

                for n = 1:4

                    theta = DH(n,1);
                    d     = DH(n,2);
                    a     = DH(n,3);
                    alpha = DH(n,4);

                    A = DH_matrix(theta,d,a,alpha);

                    T = T*A;

                end


                %% Posicion del efector

                P(contador,:) = T(1:3,4)';

                contador = contador + 1;

            end

        end

    end

end


%% =========================
% GRAFICA DEL ESPACIO DE TRABAJO
% =========================

figure;

scatter3(P(:,1),P(:,2),P(:,3),5,'filled');

grid on;
axis equal;

xlabel('X [m]');
ylabel('Y [m]');
zlabel('Z [m]');

title('Espacio de trabajo del robot');

view(3);


%% =========================
% FUNCION DH
% =========================

function T = DH_matrix(theta,d,a,alpha)

    T = [cos(theta), -sin(theta)*cos(alpha),  sin(theta)*sin(alpha), a*cos(theta);
         sin(theta),  cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
         0,           sin(alpha),             cos(alpha),            d;
         0,           0,                      0,                     1];

end