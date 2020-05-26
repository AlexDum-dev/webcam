function ImageTraite = retourneImageTraite(ImageBin)

SE = strel('rectangle',[9 9]);
SE2 = strel('rectangle',[10 10]);
ImageDilate = imdilate(ImageBin,SE);
ImageTraite = imerode(ImageDilate,SE2);

end