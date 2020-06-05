%% Créer la structure avec les images à analyser : 

function screen = remplissage2()
a1=double(binarize(imread('screen0.png')));
a2=double(binarize(imread('screen1.png')));
a3=double(binarize(imread('screen2.png')));
a4=double(binarize(imread('screen3.png')));
a5=double(binarize(imread('screen4.png')));
a6=double(binarize(imread('screen5.png')));
a7=double(binarize(imread('screen6.png')));
a8=double(binarize(imread('screen7.png')));
a9=double(binarize(imread('screen8.png')));
a10=double(binarize(imread('screen9.png')));
a11=double(binarize(imread('screen10.png')));
a12=double(binarize(imread('screen11.png')));
a13=double(binarize(imread('screen12.png')));
a14=double(binarize(imread('screen13.png')));
a15=double(binarize(imread('screen14.png')));
a16=double(binarize(imread('screen15.png')));
a17=double(binarize(imread('screen16.png')));
a18=double(binarize(imread('screen17.png')));
a19=double(binarize(imread('screen18.png')));
a20=double(binarize(imread('screen19.png')));
a21=double(binarize(imread('screen20.png')));
a22=double(binarize(imread('screen21.png')));
a23=double(binarize(imread('screen22.png')));
a24=double(binarize(imread('screen23.png')));

screen=zeros(1080,1920,24);
[x1,y1]=size (a1);
[x2,y2]=size (a2);
[x3,y3]=size (a3);
[x4,y4]=size (a4);
[x5,y5]=size (a5);
[x6,y6]=size (a6);
[x7,y7]=size (a7);
[x8,y8]=size (a8);
[x9,y9]=size (a9);
[x10,y10]=size (a10);
[x11,y11]=size (a11);
for i=1:x11
         for j=1:y11
             screen(i,j,11)=a11(i,j);
         end 
end

[x12,y12]=size (a12);
    for i=1:x12
         for j=1:y12
             screen(i,j,12)=a12(i,j);
         end 
    end

[x13,y13]=size (a13);
    for i=1:x13
         for j=1:y13
             screen(i,j,13)=a13(i,j);
         end 
    end

[x14,y14]=size (a14);
    for i=1:x14
         for j=1:y14
             screen(i,j,14)=a14(i,j);
         end 
    end
[x15,y15]=size (a15);
    for i=1:x15
         for j=1:y15
             screen(i,j,15)=a15(i,j);
         end 
    end

[x16,y16]=size (a16);
    for i=1:x16
         for j=1:y16
             screen(i,j,16)=a16(i,j);
         end 
    end
    [x17,y17]=size (a17);
    for i=1:x17
         for j=1:y17
             screen(i,j,17)=a17(i,j);
         end 
    end
[x18,y18]=size (a18);
    for i=1:x18
         for j=1:y18
             screen(i,j,18)=a18(i,j);
         end 
    end

[x19,y19]=size (a19);
    for i=1:x19
         for j=1:y19
             screen(i,j,19)=a19(i,j);
         end 
    end

[x20,y20]=size (a20);
    for i=1:x20
         for j=1:y20
             screen(i,j,20)=a20(i,j);
         end 
    end

[x21,y21]=size (a21);
    for i=1:x21
         for j=1:y21
             screen(i,j,21)=a21(i,j);
         end 
    end

[x22,y22]=size (a22);
    for i=1:x22
         for j=1:y22
             screen(i,j,22)=a22(i,j);
         end 
    end
[x23,y23]=size (a23);
    for i=1:x23
         for j=1:y23
             screen(i,j,23)=a23(i,j);
         end 
    end

[x24,y24]=size (a24);
    for i=1:x24
         for j=1:y24
             screen(i,j,24)=a24(i,j);
         end 
    end






    for i=1:x1
         for j=1:y1
             screen(i,j,1)=a1(i,j);
         end 
    end
    
     for i=1:x2
         for j=1:y2
             screen(i,j,2)=a2(i,j);
         end 
     end
     
     
   for i=1:x3
         for j=1:y3
             screen(i,j,3)=a3(i,j);
         end 
   end  
   
   
     for i=1:x4
         for j=1:y4
             screen(i,j,4)=a4(i,j);
         end 
     end
       
             
   for i=1:x5
         for j=1:y5
             screen(i,j,5)=a5(i,j);
         end 
   end
   
   for i=1:x6
         for j=1:y6
             screen(i,j,6)=a6(i,j);
         end 
   end
    
   for i=1:x7
         for j=1:y7
             screen(i,j,7)=a7(i,j);
         end 
   end
       
   
   
  for i=1:x8
         for j=1:y8
             screen(i,j,8)=a8(i,j);
         end 
  end
    
   
  
  for i=1:x9
         for j=1:y9
             screen(i,j,9)=a9(i,j);
         end 
  end
    
   
  
   for i=1:x10
         for j=1:y10
             screen(i,j,10)=a10(i,j);
         end 
   end