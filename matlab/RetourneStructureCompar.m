function [chiffre, max_compar] = RetourneStructureCompar(structure_chiffre, image_chiffre)

%% Boucle for faisant l'opération  de corrélation : 
max_compar = zeros(1,10);

for n=1:1:10  
    compar = compare(image_chiffre, structure_chiffre(:,:,n));
    max_compar(n) = compar;
end

disp(max(max_compar));

for i=1:1:10
    if max_compar(i) == max(max_compar)
        chiffre = i-1;
    end
end