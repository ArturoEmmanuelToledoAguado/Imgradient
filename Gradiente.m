clc;
clear all;
close all;

%Extraccion de las imagenes
ruta={'IMG/1.jpg', 'IMG/2.jpg', 'IMG/3.jpg', 'IMG/4.jpg', 'IMG/5.jpg'};


for k=1:5
    %Abrir la imagen
    img=imread(string(ruta(k)));

    %Pasar a escala de grises con la funcion
    img=rgb2gray(img);
    figure(k)
    subplot(2,1,1)
    imshow(img)
    title('Original')
    clear Gmag;
    clear Gdir;
    
    %Uso de imgradient, obtiene el gradiente de magnitud y direccion de una
    %imagen 2D
    [Gmag, Gdir]=imgradient(img);
    subplot(2,1,2)
    imshowpair(Gmag,Gdir,"montage");
    title({'Gradiente de Magnitud (L)   Gradiente de Direccion (R)';'usando imgradient'});
    
    %Uso de imgradientxy, sirve para obtener los gradientes direccionales 
    %de una imagenn 2D
    figure(k+5)
    subplot(2,1,1)
    imshow(img)
    title('Original')
    clear Gx;
    clear Gy;
    [Gx, Gy]=imgradientxy(img);
    subplot(2,1,2)
    imshowpair(Gx,Gy,"montage");
    title({'Gradiente de Direccion x (Gx)   Gradiente de Direccion y (Gy)';'usando imgradientxy'});
end

