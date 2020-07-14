clc
clear all
close all
%Adelgazamiento
A=[1 1 1 1 1 1 1 1 1 1 1 1 1;
   1 0 0 0 0 0 0 0 0 0 0 0 1;
   1 0 0 0 0 0 0 0 0 0 1 1 1;
   1 0 0 0 0 0 0 0 0 0 1 1 1;
   1 0 0 0 0 0 0 0 0 0 1 1 1;
   1 0 0 0 1 1 0 0 0 0 1 1 1;
   1 1 1 1 1 1 1 1 1 1 1 1 1];

B1=[1 1 1 ;1 0 1; 0 0 0];
B2=[1 1 1; 0 0 1; 0 0 1];
B3=[0 1 1; 0 0 1; 0 1 1];
B4=[0 0 1; 0 0 1; 1 1 1];
B5=[0 0 0; 1 0 1; 1 1 1];
B6=[1 0 0; 1 0 0; 1 1 1];
B7=[1 1 0; 1 0 0; 1 1 0];
B8=[1 1 1; 1 0 0; 1 0 0];

figure,
subplot(1,1,1),imshow(A)
figure,
subplot(1,3,1),imshow(B1)
subplot(1,3,2),imshow(B2)
subplot(1,3,3),imshow(B3)
figure,
subplot(1,3,1),imshow(B4)
subplot(1,3,2),imshow(B5)
subplot(1,3,3),imshow(B6)
figure,
subplot(1,2,1),imshow(B7)
subplot(1,2,2),imshow(B8)

Q=A-(imerode(A,B1)-imdilate(A,~B1));

figure,
subplot(1,3,1),imshow(Q)
