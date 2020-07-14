clc
clear all
close all
%Transformada de hit-or-miss

A=[1 1 1 1 1 1 1;
   1 1 1 0 0 1 1;
   1 1 0 0 0 0 1;
   1 1 0 0 0 0 1;
   1 1 1 0 0 1 1;
   1 1 1 0 1 1 1;
   1 1 1 1 1 1 1];
J=[0 0;1 0];
figure,
subplot(1,3,1),imshow(A),title('A')
subplot(1,3,3),imshow(~A),title('~A')
subplot(1,3,3),imshow(J),title('J')

Z=imerode(A,J);
S=imdilate(A,~J);
Q=~S-~Z

figure,
subplot(1,3,1),imshow(Z),title('imerode(A,J)')
subplot(1,3,2),imshow(S),title('imdilate(A,J)')
subplot(1,3,3),imshow(Q),title('imerode - imdilate')



