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
            mat_resultats(i,j)  = premier_chiffre + 10*second_chiffre;
            j = j+1;
        end
    end
end        



%% Corr�lation : 
image = imread('screen2.png');
image_bin = binarize(image);
character = retourneImageCharactere(image_bin, 2);
[chiffre, tab_max,structure_corr] = retourneMaxStructure(chiffres,character);