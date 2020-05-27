function diff = compare(a,b)
delta=double(a==b);
[x1,y1]= size(delta);
diff=sum(sum(delta))/(x1*y1);
