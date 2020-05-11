function corr = correl2D(A, B)
corr = convolution2D(A, rot90(conj(B),2));