function charactereConnu = verificationDuCharactere(boxPixel,tailleBox,x,y)
charactereConnu = false;
for n = 1:8
    if x >= boxPixel(n,1) && x <= boxPixel(n,1)+tailleBox(1)&& y >= boxPixel(n,2) && y <= boxPixel(n,2)+tailleBox(2)
       charactereConnu = true;
    end

end

% On verifie si le pixel selectionn� fait d�ja parti ou non de boxPixel.
% Permet de d�finir boxPixel avec 1 seule pixel, celui dans le coin en haut � gauche