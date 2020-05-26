function boxPixelV2 = ordonneBoxPixel(boxPixel)

for n = 1:2:8
    if boxPixel(n,1) > boxPixel(n+1,1)              % On ordonne la matrice boxPixel pour faire                          % 
        x = boxPixel(n,1);                          % correspondre le 1er charactere de l'image 
        y = boxPixel(n,2);                          % avec la premiere cellule de la matrice
        boxPixel(n,1) = boxPixel(n+1,1);            % et ainsi de suite
        boxPixel(n,2) = boxPixel(n+1,2);
        boxPixel(n+1,1) = x;
        boxPixel(n+1,2) = y;
    end
    boxPixelV2 = boxPixel;
    
end
