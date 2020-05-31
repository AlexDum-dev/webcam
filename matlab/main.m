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
images = remplissage2();
images_traited = images;
im = images_traited(:,:,5);
disp(sum(sum(im)));
%% Détection
mat_resultats =zeros(24,4);
j = 1;
for i=1:1:24
   images_traited(:,:,i) = retourneImageTraite(images(:,:,i));
    j=1;
    for n=1:1:8
        character = retourneCharactereAuto(images_traited(:,:,i), n);
        [chiffre,corr,structure_corr] = retourneMaxStructure(chiffres, character);
        if mod(n,2) ~= 0
            premier_chiffre = chiffre;
        else
            second_chiffre = chiffre;
            mat_resultats(i,j)  = second_chiffre + 10*premier_chiffre;
            j = j+1;
        end
    end
end        
%% Mise en forme des graphes des résultats : 
figure(1);
plot(mat_resultats(:,1), mat_resultats(:,2),'o');
title('Evolution de le température d une journée à intervalle de temps d une heure');
xlabel(' temps en heure');
ylabel('Température en degré celcius');

figure(2);
plot(mat_resultats(:,1), mat_resultats(:,3),'o');
title('Evolution de la vitesse du vent d une journee à intervalle de temps d une heure');
xlabel('temps en heure');
ylabel('Vitesse en km/h');
figure(3);
plot(mat_resultats(:,1), mat_resultats(:,4),'o');
title('Evolution de l humidité d une journée à intervalle de temps d une heure');
xlabel('temps en heure');
ylabel('Taux d humidité');
%% Test de corrélation pour le screen 0 : 
%images_traited(:,:,1) = retourneImageTraite(images(:,:,1));
%im = binarize(imread('Ressources/images/screen0.png'));
%im_t = retourneImageTraite(im);
%character = retourneCharactereAuto(im_t, 3);
%[chiffre,corr,strcuture_coorr] = retourneMaxStructure(chiffres, character);
%disp(chiffre);

%figure(1);
%imshow(im);

%% Résultat similarité : 
%im1 = binarize(imread('Ressources/screen/screen1.png'));
%im2 = binarize(imread('Ressources/screen/screen2.png'));
%character = retourneImageCharactere(im1,7);
%[chiffre, max] = RetourneStructureCompar(chiffres, character);

%figure(1);
%imshow(character);
%% Corr�lation : 
%image = imread('screen2.png');
%image_bin = binarize(image);
%character = retourneImageCharactere(image_bin, 2);
%[chiffre, tab_max,structure_corr] = retourneMaxStructure(chiffres,character);