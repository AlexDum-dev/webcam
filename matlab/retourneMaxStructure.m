function maxCorr = retourneMaxStructure(structure_chiffre, image_chiffre)

%% Boucle for faisant l'opération  de corrélation : 
structure_corr = zeros(1,10);
for n=1:1:10
    %structure_corr(:,:,n) = xcorr2(image_chiffre,structure_chiffre(:,:,n)); 
    structure_corr(n) = max(max(normxcorr2(image_chiffre, structure_chiffre(:,:,n))));
end
disp(max(structure_corr));

maxCorr = max(structure_corr);

for i=1:1:10
    if structure_corr(i) == maxCorr
        disp(i-1);
    end
end
%% Boucle for permettant de trouver le max de la structure : 
%%for i=1:1:10
    %%c = structure_corr(:,:,i);
    %%surf(c)
    %%shading flat
    %%[ypeak,xpeak] = find(c==max(c(:)));
    %%max_Corr(i) = stucture_corr(ypeak, xpeak, i); 
    
%%end

%%maxCorr = max(max_Corr);

end 