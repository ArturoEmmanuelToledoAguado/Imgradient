clc;
clear all;
close all;

%Abrir imagen
img=imread('IMG\1.jpg');
img2=imread('IMG\2.jpg');

%Pasamos a escala de grises con la función
img=rgb2gray(img);
img2=rgb2gray(img2);

[Gmag Gdir]=imgradient(img);
[Gmag2 Gdir2]=imgradient(img2);
figure
imshow(img)
figure
subplot(2,1,1)
imshowpair(Gmag,Gdir,"montage")
subplot(2,1,2)
imshowpair(Gmag2,Gdir2,"montage")