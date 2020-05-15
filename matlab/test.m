%% Test pour la corrélation : 
image = imread('Ressources/CaptureEcran2.png');
deux = imread('Ressources/quatre.png');

deux_binarized = binarize(deux);

deux_extrait = retourneImageCharactere(image, 7);

deux_extrait_bin = double(imbinarize(deux_extrait));

%corr = correl2D(deux_extrait_bin-mean(mean(deux_extrait_bin)), deux_binarized-mean(mean(deux_binarized))); 
corr2 = xcorr2(deux_extrait_bin-mean(mean(deux_extrait_bin)), deux_binarized-mean(mean(deux_binarized)));
%corr3 = xcorr2(deux_extrait-mean(mean(deux_extrait)),deux_extrait-mean(mean(deux_extrait)));


figure(1);
stem(corr2);

figure(4);
imagesc(corr2);

%figure(2);
%plot(corr3);

%figure(3);
%plot(corr);