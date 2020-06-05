%% Fonction qui renvoie le coefficient de comparaison binaire entre deux matrices (indice de Dice): 
function diff = compare(a,b)
delta=double(a==b);
[x1,y1]= size(delta);
diff=sum(sum(delta))/(x1*y1);
