function charactereVoulu = retourneCharactereAuto(ImageTraite,numeroDuCharactere)
[ligne,colonne] = size(ImageTraite);                                        % Recupere la taille de l'image
boxPixel = zeros(8,2);                                                      % Matrice qui contient les coordonnées du coin en haut à gauche de chaque charactere (8 pour le nombre de charactere, 2 pour x et y)
tailleBox= [76 131];                                                        % Defini la taille des characteres
nbCharactereConnu = 1;                                                      % Permet d'ajouter un à un les valeurs dans boxPixel (permet l'incrementation)         
for i = 1:ligne                                                             % On parcourt tous les pixels de l'image 
    for j = 1:colonne
        charactereConnu = verificationDuCharactere(boxPixel,tailleBox,j,i); % On verifie si le pixel selectionné a déja été enregisté ou non
        if ImageTraite(i,j) == 0 && charactereConnu == false                     % Si on a un pixel noir et non enregistré
            boxPixel(nbCharactereConnu,1) = j-7;                            % Alors on ajoute ses coordonnées à boxPixel (on le fait seulement pour le 1er pixel du charactere, pour les autres, ils sont considérées comme enregistrés)
            boxPixel(nbCharactereConnu,2) = i;
            nbCharactereConnu = nbCharactereConnu+1;
            charactereConnu = false;
        end
    end
end
boxPixel = ordonneBoxPixel(boxPixel);                                       % On met les characteres dans l'ordre si ils ne le sont pas ( problème lié à la difference de hauteur entre les characteres)
boxPixel = ajustementBoxPixel(boxPixel,ImageTraite);                             % On ajuste les zones séléctionnés pour récuperer un seul charactere à la fois (obligatoire pour le chiffre 1 et 4)
charactereVoulu = ImageTraite(boxPixel(numeroDuCharactere,2):boxPixel(numeroDuCharactere,2)+tailleBox(2)-2,boxPixel(numeroDuCharactere,1):boxPixel(numeroDuCharactere,1)+tailleBox(1)-1);   % On découpe l'image pour obtenir le charactere voulu

end