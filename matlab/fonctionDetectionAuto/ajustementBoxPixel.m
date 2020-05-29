function boxPixelFinale = ajustementBoxPixel(boxPixel,ImageTraite)

nbPixelBlanc = 0;
for n = 1:8
    for j = 1:76
        if ImageTraite(boxPixel(n,2)+5,boxPixel(n,1)+j) == 1    % On compte le nombre de pixel blanc sur la 5eme ligne du charactere
            nbPixelBlanc = nbPixelBlanc +1;
        end
    end
    if nbPixelBlanc < 60                                          % Si le nombre de pixel blanc est inferieur a 60
        boxPixel(n,1) = boxPixel(n,1)-58;                         % ça veut dire que l'on a un 1 ou un 4
    end                                                           % et donc il faut décaler la zone de 58 pixels
    nbPixelBlanc = 0;                                             % pour pouvoir récuperer entierement le charactere
end

boxPixelFinale = boxPixel;

end