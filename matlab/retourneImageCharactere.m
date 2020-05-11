function ImageCharactere = retourneImageCharactere(Image,numeroCharactere)
zoneCharactere = [  181 323 1322 1407 ;         % coordonnee du 1er charactere de l'heure (y1,y2,x1,x2)
                    181 323 1414 1497 ;         % coordonnee du 2eme charactere de l'heure (y1,y2,x1,x2)
                    383 521 505 589 ;           % coordonnee du 1er charactere de la temperature (y1,y2,x1,x2)
                    383 521 596 681 ;           % coordonnee du 2eme charactere de la temperature (y1,y2,x1,x2)
                    583 721 505 589 ;           % coordonnee du 1er charactere du vent (y1,y2,x1,x2)
                    583 721 596 681 ;           % coordonnee du 2eme charactere du vent (y1,y2,x1,x2)
                    782 921 505 589 ;           % coordonnee du 1er charactere de l'humidite (y1,y2,x1,x2)
                    782 921 596 681]            % coordonnee du 2eme charactere de l'humidite (y1,y2,x1,x2)
                
y1 = zoneCharactere(numeroCharactere,1);
y2 = zoneCharactere(numeroCharactere,2);
x1 = zoneCharactere(numeroCharactere,3);
x2 = zoneCharactere(numeroCharactere,4)

ImageCharactere = Image((y1:y2),(x1:x2));       % on selectionne la zone de l'image a recuperer
end