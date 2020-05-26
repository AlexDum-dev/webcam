%% Fonction permettant de binariser une image à l'aides fonctions matlab rgb2gray et imbinarize
% return image_bin : image binarisée


function image_finale = binarize(image)

image_gray = rgb2gray(image); % Transforme l'image couleur par une image grayscale

image_bin = imcomplement(imbinarize(image_gray, 0.7));% Binarize l'image grayscale

image_finale = im2uint8(image_bin);

end