clc
clear all
close all

A=[1 1 1 1 1 1
   1 1 0 0 1 1
   1 0 1 1 0 1
   1 1 0 1 0 1
   1 1 1 0 0 1
   1 1 1 1 1 1
   1 1 1 1 1 1];
B=[1 0 1
   0 0 0
   1 0 1];
figure,
subplot(1,3,1),imshow(A),title('A')
subplot(1,3,2),imshow(~A),title('~A')
subplot(1,3,3),imshow(B),title('B')



C=imerode(A,B);

figure,imdilate(C);
