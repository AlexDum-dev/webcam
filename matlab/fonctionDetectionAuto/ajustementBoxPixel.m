function boxPixelFinale = ajustementBoxPixel(boxPixel,ImageTraite)

nbPixelNoir = 0;
for n = 1:8
    for j = 1:76
        if ImageTraite(boxPixel(n,2)+5,boxPixel(n,1)+j) == 0         % On compte le nombre de pixel noir sur la 5eme ligne du charactere
            nbPixelNoir = nbPixelNoir +1;
        end
    end
    if nbPixelNoir < 60                                         % Si le nombre de pixel noir est inferieur a 60
        boxPixel(n,1) = boxPixel(n,1)-58;                       % ça veut dire que l'on a un 1 ou un 4
    end                                                         % et donc il faut décaler la zone de 58 pixels
    nbPixelNoir = 0;                                            % pour pouvoir récuperer entierement le charactere
end

boxPixelFinale = boxPixel;

end