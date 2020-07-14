clc
clear all
close all

I=imread('coins.png');
figure,imshow(I),title('Imagen Original')
[W H]=size(I);

%objeto
B=strel('disk',2);

%Binarizacion
for i=1:1:W; 
    for j=1:1:H
        if((I(i,j))>128); % apartir del histograma
            Is(i,j)=1;
        else
            Is(i,j)=0;
        end
    end
end
figure, imshow(Is),title('BINARIZED IMAGE');

%erosion
ero=imerode(Is,B);
ero1=imerode(ero,B);

figure,
subplot(1,2,1),imshow(ero),title('Erosion 1')
subplot(1,2,2),imshow(ero1),title('Erosion 2')

figure,
ero1=uint8(ero1);
R=ero1.*I;
R=uint8(R);
imshow(R),title('Segunda erosion')

%apertura clausura
figure,
IO = imopen(Is,B);
IC = imclose(IO,B);
subplot(1,3,1),imshow(Is),title('Binarizacion')
subplot(1,3,2),imshow(IO),title('Open')
subplot(1,3,3),imshow(IC),title('Close')
