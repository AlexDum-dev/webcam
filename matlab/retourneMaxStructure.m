%% Fonction qui fait la corrélation et retourne le chiffre détecté ainsi que les max des indices de similarité : 

function [chiffre, max_corr,structure_corr] = retourneMaxStructure(structure_chiffre, image_chiffre)

%% Boucle for faisant l'opération  de corrélation : 
max_corr = zeros(1,10);
structure_corr  = zeros(259,151,10);

for n=1:1:10 
    %Corrélation :
    corr = normxcorr2(image_chiffre, structure_chiffre(:,:,n)); 
    structure_corr(:,:,n) = corr;
    max_corr(n) = max(max(corr));
end

for i=1:1:10
    if max_corr(i) == max(max_corr)
        chiffre = i-1;
    end
end
end 