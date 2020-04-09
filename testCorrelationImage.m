clear all
close all

ImageInitiale = imread("Images/chiffre1.png");
ImageBinarise = im2bw(ImageInitiale);
c = [0 104 255];
r = [0 59 255];
ZoneImage =bwselect (ImageBinarise,c,r)

fig = figure();
subplot(2,2,1)
imshow(ImageInitiale)
subplot(2,2,2)
imshow(ImageBinarise)
subplot(2,2,3)
imshow(ZoneImage)


