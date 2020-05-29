a1=double(imcomplement(imread('Ressources/chiffre/chiffre0.png')));
a2=double(imcomplement(imread('Ressources/chiffre/chiffre1.png')));
a3=double(imcomplement(imread('Ressources/chiffre/chiffre2.png')));
a4=double(imcomplement(imread('Ressources/chiffre/chiffre3.png')));
a5=double(imcomplement(imread('Ressources/chiffre/chiffre4.png')));
a6=double(imcomplement(imread('Ressources/chiffre/chiffre5.png')));
a7=double(imcomplement(imread('Ressources/chiffre/chiffre6.png')));
a8=double(imcomplement(imread('Ressources/chiffre/chiffre7.png')));
a9=double(imcomplement(imread('Ressources/chiffre/chiffre8.png')));
a10=double(imcomplement(imread('Ressources/chiffre/chiffre9.png')));
chiffres=zeros(130,76,10);
[x1,y1]=size (a1);
[x2,y2]=size (a2);
[x3,y3]=size (a3);
[x4,y4]=size (a4);
[x5,y5]=size (a5);
[x6,y6]=size (a6);
[x7,y7]=size (a7);
[x8,y8]=size (a8);
[x9,y9]=size (a9);
[x10,y10]=size (a10);


    for i=1:x1
         for j=1:y1
             chiffres(i,j,1)=a1(i,j);
         end 
    end
    
     for i=1:x2
         for j=1:y2
             chiffres(i,j,2)=a2(i,j);
         end 
     end
     
     
   for i=1:x3
         for j=1:y3
             chiffres(i,j,3)=a3(i,j);
         end 
   end  
   
   
     for i=1:x4
         for j=1:y4
             chiffres(i,j,4)=a4(i,j);
         end 
     end
       
             
   for i=1:x5
         for j=1:y5
             chiffres(i,j,5)=a5(i,j);
         end 
   end
   
   for i=1:x6
         for j=1:y6
             chiffres(i,j,6)=a6(i,j);
         end 
   end
    
   for i=1:x7
         for j=1:y7
             chiffres(i,j,7)=a7(i,j);
         end 
   end
       
   
   
  for i=1:x8
         for j=1:y8
             chiffres(i,j,8)=a8(i,j);
         end 
  end
    
   
  
  for i=1:x9
         for j=1:y9
             chiffres(i,j,9)=a9(i,j);
         end 
  end
    
   
  
   for i=1:x10
         for j=1:y10
             chiffres(i,j,10)=a10(i,j);
         end 
   end
   
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
image = imread('Ressources/screen/screen2.png');
image_bin = binarize(image);
character = retourneImageCharactere(image_bin, 2);
[chiffre, tab_max,structure_corr] = retourneMaxStructure(chiffres,character); 


figure(1);
subplot(2,1,1);
imshow(character)
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
imshow(a10);

figure(5);
title 
histogram(rgb2gray(image));