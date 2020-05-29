function chiffres = remplissage(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
bin=255*ones(130,76);
chiffres=zeros(130,76,10);
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


    for i=1:x1
         for j=1:y1
             chiffres(i,j,1)=a1(i,j);
         end 
    end
    
     for i=1:x2
         for j=1:y2
             chiffres(i,j,2)=a2(i,j);
         end 
     end
     
     
   for i=1:x3
         for j=1:y3
             chiffres(i,j,3)=a3(i,j);
         end 
   end  
   
   
     for i=1:x4
         for j=1:y4
             chiffres(i,j,4)=a4(i,j);
         end 
     end
       
             
   for i=1:x5
         for j=1:y5
             chiffres(i,j,5)=a5(i,j);
         end 
   end
   
   for i=1:x6
         for j=1:y6
             chiffres(i,j,6)=a6(i,j);
         end 
   end
    
   for i=1:x7
         for j=1:y7
             chiffres(i,j,7)=a7(i,j);
         end 
   end
       
   
   
  for i=1:x8
         for j=1:y8
             chiffres(i,j,8)=a8(i,j);
         end 
  end
    
   
  
  for i=1:x9
         for j=1:y9
             chiffres(i,j,9)=a9(i,j);
         end 
  end
    
   
  
   for i=1:x10
         for j=1:y10
             chiffres(i,j,10)=a10(i,j);
         end 
   end
   for i=1:10
      chiffres(:,:,i)=double(chiffres(:,:,i)==bin);
     
   end