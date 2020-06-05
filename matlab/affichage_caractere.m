clear all
close all
bin=255*ones(130,76);
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
b2=double((binarize(imread('screen22.png'))));
for i=1:10
corr=xcorr2(b2-mean(mean(b2)),chiffres(:,:,i)-mean(mean(chiffres(:,:,i))));
[xa,ya]=find(corr==max(max(corr)));
[a,b]=size(chiffres(:,:,i));
xa=xa-a/2;
ya=ya-b/2;
figure(1);
imagesc(b2);
axis image ;
hold on,
a=string(i-1);
text(ya,xa,a);
title('focntion xcorr2')
hold off
end