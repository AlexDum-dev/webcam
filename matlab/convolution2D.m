function B = convolution2D(A, k)
[a,b] = size(A);
[c,d] = size(k);
h = rot90(k, 2);
centre = floor((size(h)+1)/2);
gauche= centre(2) - 1;
droite = d - centre(2);
sup = centre(1) - 1;
inf = c - centre(1);
Rep = zeros(a + sup + inf, b + gauche + droite);
for x = 1 + sup : a + sup
    for y = 1 + gauche : b + gauche
        Rep(x,y) = A(x - sup, y - gauche);
    end
end
B = zeros(a , b);
for x = 1 : a
    for y = 1 : b
        for i = 1 : c
            for j = 1 : d
                q = x - 1;
                w = y -1;
                B(x, y) = B(x, y) + (Rep(i + q, j + w) * h(i, j));
            end
        end
    end
end

