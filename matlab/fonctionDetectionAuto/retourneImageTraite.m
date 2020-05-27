function ImageTraite = retourneImageTraite(ImageBin)

SE = strel('rectangle',[9 9]);
ImageErode = imerode(ImageBin,SE);
ImageTraite = imdilate(ImageErode,SE);

end