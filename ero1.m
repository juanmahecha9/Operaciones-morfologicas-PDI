clear all
close all
clc
%erosion le resto el original
a=[ 0 0 0 0 0 0 0 0 0 0 0 0;
    0 1 1 1 0 1 1 1 1 1 0 0;
    0 1 1 1 0 1 1 1 1 1 0 0;
    0 1 1 1 1 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 1 1 1 1 0;
    0 0 0 0 0 0 0 0 0 0 0 0;];

b=[1 1 1;1 1 1;1 1 1];

E=imerode(a,b);
E1=a-E;
imshow(not(E))