clc
clear all
close all
%NOTA EL 0 EQUIVALE AL NEGRO Y EL 1 A BLANCO

A=[1 1 1 1 1 1 1 1 1 1 1 1;
   1 0 0 0 1 0 0 0 0 0 1 1;
   1 0 0 0 1 0 0 0 0 0 1 1;
   1 0 0 0 0 0 0 0 0 0 0 1;
   1 0 0 0 0 0 0 0 0 0 0 1;
   1 0 0 0 0 0 0 0 0 0 0 1;
   1 1 1 1 1 1 1 1 1 1 1 1];

B=[0 0 0; 0 0 0; 0 0 0];


figure,
subplot(1,2,1),imshow(A),title('Conjunto A')
subplot(1,2,2),imshow(B),title('Conjunto B')

C=imerode(~A,~B);
figure,
subplot(1,2,1),imshow(C),title('Extraccion de la frontera')
subplot(1,2,2),imshow(~C),title('Extraccion de la frontera')