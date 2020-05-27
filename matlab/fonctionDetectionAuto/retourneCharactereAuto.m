function charactereVoulu = retourneCharactereAuto(ImageTraite,numeroDuCharactere)
[ligne,colonne] = size(ImageTraite);                                        % Recupere la taille de l'image
boxPixel = zeros(8,2);                                                      % Matrice qui contient les coordonn�es du coin en haut � gauche de chaque charactere (8 pour le nombre de charactere, 2 pour x et y)
tailleBox= [76 131];                                                        % Defini la taille des characteres
nbCharactereConnu = 1;                                                      % Permet d'ajouter un � un les valeurs dans boxPixel (permet l'incrementation)         
for i = 1:ligne                                                             % On parcourt tous les pixels de l'image 
    for j = 1:colonne
        charactereConnu = verificationDuCharactere(boxPixel,tailleBox,j,i); % On verifie si le pixel selectionn� a d�ja �t� enregist� ou non
        if ImageTraite(i,j) == 0 && charactereConnu == false                     % Si on a un pixel noir et non enregistr�
            boxPixel(nbCharactereConnu,1) = j-7;                            % Alors on ajoute ses coordonn�es � boxPixel (on le fait seulement pour le 1er pixel du charactere, pour les autres, ils sont consid�r�es comme enregistr�s)
            boxPixel(nbCharactereConnu,2) = i;
            nbCharactereConnu = nbCharactereConnu+1;
            charactereConnu = false;
        end
    end
end
boxPixel = ordonneBoxPixel(boxPixel);                                       % On met les characteres dans l'ordre si ils ne le sont pas ( probl�me li� � la difference de hauteur entre les characteres)
boxPixel = ajustementBoxPixel(boxPixel,ImageTraite);                             % On ajuste les zones s�l�ctionn�s pour r�cuperer un seul charactere � la fois (obligatoire pour le chiffre 1 et 4)
charactereVoulu = ImageTraite(boxPixel(numeroDuCharactere,2):boxPixel(numeroDuCharactere,2)+tailleBox(2)-2,boxPixel(numeroDuCharactere,1):boxPixel(numeroDuCharactere,1)+tailleBox(1)-1);   % On d�coupe l'image pour obtenir le charactere voulu

end