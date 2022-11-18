clc;
clear all;
close all;

%Extraccion de las imagenes
ruta={'IMG/1.jpg', 'IMG/2.jpg', 'IMG/3.jpg', 'IMG/4.jpg', 'IMG/5.jpg'};

%Metodos
met = {'sobel','prewitt','central','intermediate','roberts'};

for k=1:5
    %Abrir la imagen
    img=imread(string(ruta(k)));

    %Pasar a escala de grises con la funcion
    img=rgb2gray(img);
    figure
    subplot(6,1,1)
    imshow(img)
    title('Original')
    clear Gmag;
    clear Gdir;
    %Uso de imgradient
    for i=1:5
        [Gmag(:,:,i) Gdir(:,:,i)]=imgradient(img,string(met(i)));
        %Metodos aplicados a la imagen en una sola figura
        subplot(6,1,i+1)
        imshowpair(Gmag(:,:,i), Gdir(:,:,i),"montage")
        title('Gradiente de Magnitud (L)   Gradiente de Direccion (R)')
    end
end

% %Pasamos a escala de grises con la función
% img=rgb2gray(img);
% img2=rgb2gray(img2);
% 
% [Gmag Gdir]=imgradient(img);
% [Gmag2 Gdir2]=imgradient(img2);
% 
% figure
% subplot(2,1,1)
% imshow(img)
% title('Original')
% subplot(2,1,2)
% imshowpair(Gmag,Gdir,"montage")
% title('Gradiente de Magnitud (L)   Gradiente de Direccion (R)')
% 
% figure
% subplot(2,1,1)
% imshow(img2)
% title('Original')
% subplot(2,1,2)
% imshowpair(Gmag2,Gdir2,"montage")
% title('Gradiente de Magnitud (L)   Gradiente de Direccion (R)')