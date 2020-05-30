function boxPixelFinale = ajustementBoxPixel(x,y,ImageTraite)

nbPixelBlanc = 0;
for j = 1:76
    if ImageTraite(y+5,x+j) == 1          % On compte le nombre de pixel blanc sur la 5eme ligne du charactere
        nbPixelBlanc = nbPixelBlanc +1;
    end
end
    if nbPixelBlanc < 60                  % Si le nombre de pixel blanc est inferieur a 60
        x = x-58;                         % ça veut dire que l'on a un 1 ou un 4
    end                                   % et donc il faut décaler la zone de 58 pixels
                                          % pour pouvoir récuperer entierement le charactere
boxPixelFinale = x;

end