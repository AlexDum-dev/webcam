%% Fonction permettant de binariser une image à l'aides fonctions matlab rgb2gray et imbinarize
% return image_bin : image binarisée


function image_bin = binarize(image)

image_gray = rgb2gray(image); % Transforme l'image couleur par une image grayscale

image_bin = imbinarize(image_gray); % Binarize l'image grayscale

end