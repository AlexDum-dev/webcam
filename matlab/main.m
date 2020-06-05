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

chiffres=remplissage(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10); % Création d'une structure avec toutes les images de référence

images = remplissage2(); % Création structure avec toutes les images à analyser
images_traited = images;

%% Détection et corrélation des images à analyser
%Détection de la température, vitesse du vent et taux d'humidité
%Résultats détectés dans une mat_resultats : colonne 1 : heure, colonne
%2:température/ colonne 3:vitesse du vent/ colonne 4 : taux d'humidité

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