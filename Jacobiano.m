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



%% VARIABLES ARTICULARES

q1 = deg2rad(0);
q2 = deg2rad(0);
q3 = deg2rad(0);
q4 = deg2rad(0);


%% TABLA DH

DH = [q1       l1   0    pi/2;
      q2       0    l2   0;
      q3-phi   0    -C   0;
      q4+gamma 0    l5   0];


%% CINEMATICA DIRECTA

T = eye(4);

% Guardamos las transformaciones
T_all = zeros(4,4,5);

T_all(:,:,1) = eye(4);

for i = 1:4

    theta = DH(i,1);
    d     = DH(i,2);
    a     = DH(i,3);
    alpha = DH(i,4);

    A = DH_matrix(theta,d,a,alpha);

    T = T*A;

    T_all(:,:,i+1) = T;

end


%% POSICION DEL EFECTOR

p = T_all(1:3,4,5);

fprintf('Posicion del efector:\n');
fprintf('X = %.4f\n',p(1));
fprintf('Y = %.4f\n',p(2));
fprintf('Z = %.4f\n',p(3));


%% =========================
% JACOBIANO
% =========================

Jv = zeros(3,4);
Jw = zeros(3,4);

for i = 1:4

    % Eje z_(i-1)
    z = T_all(1:3,3,i);

    % Posicion del origen del frame (i-1)
    p_i = T_all(1:3,4,i);

    % Jacobiano lineal
    Jv(:,i) = cross(z,p-p_i);

    % Jacobiano angular
    Jw(:,i) = z;

end
%% =========================
% DIBUJO DEL ROBOT Y EJES DH
% =========================

figure;
hold on;
grid on;
axis equal;

xlabel('X [m]');
ylabel('Y [m]');
zlabel('Z [m]');

title('Robot de 4 GDL - Ejes DH');

%% Escala de los ejes de coordenadas
escala = 0.05;

%% Dibujar los links

for i = 1:4

    p1 = T_all(1:3,4,i);
    p2 = T_all(1:3,4,i+1);

    plot3([p1(1) p2(1)], ...
          [p1(2) p2(2)], ...
          [p1(3) p2(3)], ...
          'k-', 'LineWidth', 5);

end

%% Dibujar articulaciones

for i = 1:5

    p = T_all(1:3,4,i);

    plot3(p(1),p(2),p(3), ...
          'ko', ...
          'MarkerSize',8, ...
          'MarkerFaceColor','k');

end

%% Dibujar ejes de cada sistema de coordenadas

for i = 1:5

    T_i = T_all(:,:,i);

    origen = T_i(1:3,4);

    x_axis = T_i(1:3,1);
    y_axis = T_i(1:3,2);
    z_axis = T_i(1:3,3);

    % Eje X
    quiver3(origen(1),origen(2),origen(3), ...
            escala*x_axis(1), ...
            escala*x_axis(2), ...
            escala*x_axis(3), ...
            0, 'LineWidth',2);

    % Eje Y
    quiver3(origen(1),origen(2),origen(3), ...
            escala*y_axis(1), ...
            escala*y_axis(2), ...
            escala*y_axis(3), ...
            0, 'LineWidth',2);

    % Eje Z
    quiver3(origen(1),origen(2),origen(3), ...
            escala*z_axis(1), ...
            escala*z_axis(2), ...
            escala*z_axis(3), ...
            0, 'LineWidth',2);

    % Nombre del frame
    text(origen(1), ...
         origen(2), ...
         origen(3), ...
         sprintf('  {\\{%d\\}}',i-1), ...
         'FontSize',10, ...
         'FontWeight','bold');

end

%% Vista

view(45,25);

hold off;


%% Jacobiano completo

J = [Jv;
     Jw];

disp('Jacobiano J = ');
disp(J);


%% Jacobiano transpuesto

JT = J';

disp('Jacobiano transpuesto J^T = ');
disp(JT);


%% =========================
% FUNCION DH
% =========================

function T = DH_matrix(theta,d,a,alpha)

    T = [cos(theta), -sin(theta)*cos(alpha),  sin(theta)*sin(alpha), a*cos(theta);
         sin(theta),  cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
         0,           sin(alpha),             cos(alpha),            d;
         0,           0,                      0,                     1];

end