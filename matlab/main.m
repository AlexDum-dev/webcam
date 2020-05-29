clear all
close all
a1=double(imcomplement(imread('chiffre0.png')));
a2=double(imcomplement(imread('chiffre1.png')));
a3=double(imcomplement(imread('chiffre2.png')));
a4=double(imcomplement(imread('chiffre3.png')));
a5=double(imcomplement(imread('chiffre4.png')));
a6=double(imcomplement(imread('chiffre5.png')));
a7=double(imcomplement(imread('chiffre6.png')));
a8=double(imcomplement(imread('chiffre7.png')));
a9=double(imcomplement(imread('chiffre8.png')));
a10=double(imcomplement(imread('chiffre9.png')));
chiffres=remplissage(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
% b1=imread('CaptureEcran.png');
% corr(i)=max(max(xcorr2(b1(:,:,1),chiffres(:,:,1))));
% max(corr)
%image = imcrop(binarize(imread('Ressources/test.png')));
%deux = retourneImageCharactere(image, 3);
%max = retourneMaxStructure(chiffres,image);
%corr1 = normxcorr2(image, chiffres(:,:,5));
%figure(1);
%imshow(image);
%% Corrélation : 
image = imread('screen2.png');
image_bin = binarize(image);
character = retourneImageCharactere(image_bin, 2);
[chiffre, tab_max,structure_corr] = retourneMaxStructure(chiffres,character); 


figure(1);
subplot(2,1,1);
imagesc(character)
imshow('chiffre0.png')
subplot(2,1,2);
title('Max de la sortie de la matrice de corrélation pour chaque chiffre (décalés de 1)');
stem(tab_max);

figure(2);
surf(structure_corr(:,:,10));
shading flat
title('Visualisation 3D de la matrice de corrélation d"un 7 avec le 9 de référence');

figure(3);
imshow(structure_corr(:,:,10));

figure(4);
title('Chiffre 7 extrait de notre image de la station météo');
subplot(2,2,1);
imshow(character);
subplot(2,2,2);
title('Imagette de référence du chiffre 9');
imshow(chiffres(:,:,10));
alpha=compare(chiffres(:,:,10),character);