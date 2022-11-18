clc;
clear all;
close all;

%Abrir imagen
img=imread('IMG\1.jpg');

%Pasamos a escala de grises con la función
img=rgb2gray(img);
[Gmag Gdir]=imgradient(img);
figure
imshow(img)
figure
imshowpair(Gmag,Gdir,"montage")