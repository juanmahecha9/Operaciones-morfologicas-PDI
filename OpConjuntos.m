clc
clear all
close all

% ejemplo para  teoria de conjuntos , interseccion, complemento, union,
% diferencia....

%CREAR CONJUNTOS BINARIOS
A=[1 1 1 1 0;1 1 1 1 0;1 1 1 1 0;0 0 0 0 0;0 0 0 0 0];
B=[0 0 0 0 0;0 0 0 0 0;0 1 1 1 1;0 1 1 1 1;0 1 1 1 1];
figure,
subplot(1,4,1), imshow(A),title('A')
subplot(1,4,2), imshow(~A),title('~A')
subplot(1,4,3), imshow(B),title('B')
subplot(1,4,4), imshow(~B),title('~B')

%EFECTUAR OPERACIONES BINARIAS
% la diferencia entre dos conjuntos A y B se define
% A-B={x|xE A,x ? B} = A)

%tener en cuenta A-B= A (interseccion) B complemtento
%C=A-(B); %substraccion
%C1=A-(~B); %subtraccion en conjunto B negado
%C2= ~and(A,B); %negacion de la interseccion entre B y B
% A union B
union=(A|B); % or(A,B)
%A intersección B
interseccion=(A&B); % and(A,B)
%A diferencia B
diferencia= (A&~B); %and (A,~B)
diferencia1= A-B; 
figure,
subplot(1,4,1), imshow(union),title('Union A B')
subplot(1,4,2), imshow(interseccion),title('Interseccion A B')
subplot(1,4,3), imshow(diferencia),title('Diferencia A B, complemento de B')
subplot(1,4,4), imshow(diferencia1),title('Diferencia A B, complemento de B')


