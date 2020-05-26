function ImageCharactere = retourneImageCharactere(Image,numeroCharactere)
zoneCharactere = [  187 316 1328 1403 ;         % coordonnee du 1er charactere de l'heure (y1,y2,x1,x2)
                    187 316 1419 1494 ;         % coordonnee du 2eme charactere de l'heure (y1,y2,x1,x2)
                    387 516 509 584 ;           % coordonnee du 1er charactere de la temperature (y1,y2,x1,x2)
                    387 516 600 675 ;           % coordonnee du 2eme charactere de la temperature (y1,y2,x1,x2)
                    587 716 509 584 ;           % coordonnee du 1er charactere du vent (y1,y2,x1,x2)
                    587 716 600 675 ;           % coordonnee du 2eme charactere du vent (y1,y2,x1,x2)
                    787 916 509 584 ;           % coordonnee du 1er charactere de l'humidite (y1,y2,x1,x2)
                    787 916 600 675]  ;         % coordonnee du 2eme charactere de l'humidite (y1,y2,x1,x2)
                
y1 = zoneCharactere(numeroCharactere,1);
y2 = zoneCharactere(numeroCharactere,2);
x1 = zoneCharactere(numeroCharactere,3);
x2 = zoneCharactere(numeroCharactere,4);

ImageCharactere = Image((y1:y2),(x1:x2));       % on selectionne la zone de l'image a recuperer
end