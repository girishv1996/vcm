function [shares] =fourbythree(Imgin)
inImg=im2bw(Imgin);

b0=[ 1,0,0, 1, 0,1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0];
b1=[ 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1];
b2=[ 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1];
b3=[ 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1];


w0=[ 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0];
w1=[ 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0,1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0];
w2=[ 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0];
w3=[ 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0];

[nR, nC] = size(inImg);
share1 = zeros(nR, 12*nC);
share2 = zeros(nR, 12*nC);
share3 = zeros(nR,12*nC);
share4 = zeros(nR,12*nC);
dc = zeros(nR, 12*nC);
c=12;
v=11;
for i = 1:nR
    for j = 1:nC
        n=randi([1  4],1);
            if(n==1)
                g=w0;h=b0;
            
            elseif(n==2)
                g=w1;h=b1;
                
                elseif(n==3)
                 g=w2;h=b2;
            
             
                 else
                    g=w3; h=b3;
            end
        
        if inImg(i,j) == 1 
            
            
           share1(i,(j*c)-v)=g(1,1);
            share1(i,(j*c+1)-v)=g(1,2);
            share1(i,(j*c+2)-v)=g(1,3);
            share1(i,(j*c+3)-v)=g(1,4);
            share1(i,(j*c+4)-v)=g(1,5);
            share1(i,(j*c+5)-v)=g(1,6);
            share1(i,(j*c+6)-v)=g(1,7);
            share1(i,(j*c+7)-v)=g(1,8);
            share1(i,(j*c+8)-v)=g(1,9);
            share1(i,(j*c+9)-v)=g(1,10);
            share1(i,(j*c+10)-v)=g(1,11);
            share1(i,(j*c+11)-v)=g(1,12);
            
            
            
            share2(i,(j*c)-v)=g(1,13);
            share2(i,(j*c+1)-v)=g(1,14);
            share2(i,(j*c+2)-v)=g(1,15);
            share2(i,(j*c+3)-v)=g(1,16);
            share2(i,(j*c+4)-v)=g(1,17);
            share2(i,(j*c+5)-v)=g(1,18);
            share2(i,(j*c+6)-v)=g(1,19);
            share2(i,(j*c+7)-v)=g(1,20);
            share2(i,(j*c+8)-v)=g(1,21);
            share2(i,(j*c+9)-v)=g(1,22);
            share2(i,(j*c+10)-v)=g(1,23);
            share2(i,(j*c+11)-v)=g(1,24);
            
            share3(i,(j*c)-v)=g(1,25);
            share3(i,(j*c+1)-v)=g(1,26);
            share3(i,(j*c+2)-v)=g(1,27);
            share3(i,(j*c+3)-v)=g(1,28);
            share3(i,(j*c+4)-v)=g(1,29);
            share3(i,(j*c+5)-v)=g(1,30);
            share3(i,(j*c+6)-v)=g(1,31);
            share3(i,(j*c+7)-v)=g(1,32);
            share3(i,(j*c+8)-v)=g(1,33);
            share3(i,(j*c+9)-v)=g(1,34);
            share3(i,(j*c+10)-v)=g(1,35);
            share3(i,(j*c+11)-v)=g(1,36);
            
            share4(i,(j*c)-v)=g(1,37);
            share4(i,(j*c+1)-v)=g(1,38);
            share4(i,(j*c+2)-v)=g(1,39);
            share4(i,(j*c+3)-v)=g(1,40);
            share4(i,(j*c+4)-v)=g(1,41);
            share4(i,(j*c+5)-v)=g(1,42);
            share4(i,(j*c+6)-v)=g(1,43);
            share4(i,(j*c+7)-v)=g(1,44);
            share4(i,(j*c+8)-v)=g(1,45);
            share4(i,(j*c+9)-v)=g(1,46);
            share4(i,(j*c+10)-v)=g(1,47);
            share4(i,(j*c+11)-v)=g(1,48);
            
            
        
        else
            share1(i,(j*c)-v)=h(1,1);
            share1(i,(j*c+1)-v)=h(1,2);
            share1(i,(j*c+2)-v)=h(1,3);
            share1(i,(j*c+3)-v)=h(1,4);
            share1(i,(j*c+4)-v)=h(1,5);
            share1(i,(j*c+5)-v)=h(1,6);
            share1(i,(j*c+6)-v)=h(1,7);
            share1(i,(j*c+7)-v)=h(1,8);
            share1(i,(j*c+8)-v)=h(1,9);
            share1(i,(j*c+9)-v)=h(1,10);
            share1(i,(j*c+10)-v)=h(1,11);
            share1(i,(j*c+11)-v)=h(1,12);
            
            
            
            share2(i,(j*c)-v)=h(1,13);
            share2(i,(j*c+1)-v)=h(1,14);
            share2(i,(j*c+2)-v)=h(1,15);
            share2(i,(j*c+3)-v)=h(1,16);
            share2(i,(j*c+4)-v)=h(1,17);
            share2(i,(j*c+5)-v)=h(1,18);
            share2(i,(j*c+6)-v)=h(1,19);
            share2(i,(j*c+7)-v)=h(1,20);
            share2(i,(j*c+8)-v)=h(1,21);
            share2(i,(j*c+9)-v)=h(1,22);
            share2(i,(j*c+10)-v)=h(1,23);
            share2(i,(j*c+11)-v)=h(1,24);
            
            share3(i,(j*c)-v)=h(1,25);
            share3(i,(j*c+1)-v)=h(1,26);
            share3(i,(j*c+2)-v)=h(1,27);
            share3(i,(j*c+3)-v)=h(1,28);
            share3(i,(j*c+4)-v)=h(1,29);
            share3(i,(j*c+5)-v)=h(1,30);
            share3(i,(j*c+6)-v)=h(1,31);
            share3(i,(j*c+7)-v)=h(1,32);
            share3(i,(j*c+8)-v)=h(1,33);
            share3(i,(j*c+9)-v)=h(1,34);
            share3(i,(j*c+10)-v)=h(1,35);
            share3(i,(j*c+11)-v)=h(1,36);
            
            share4(i,(j*c)-v)=h(1,37);
            share4(i,(j*c+1)-v)=h(1,38);
            share4(i,(j*c+2)-v)=h(1,39);
            share4(i,(j*c+3)-v)=h(1,40);
            share4(i,(j*c+4)-v)=h(1,41);
            share4(i,(j*c+5)-v)=h(1,42);
            share4(i,(j*c+6)-v)=h(1,43);
            share4(i,(j*c+7)-v)=h(1,44);
            share4(i,(j*c+8)-v)=h(1,45);
            share4(i,(j*c+9)-v)=h(1,46);
            share4(i,(j*c+10)-v)=h(1,47);
            share4(i,(j*c+11)-v)=h(1,48);
            
           
            
            
        end
    end
end
fprintf('Shares Generated\n');

for i = 1:nR
    for j = 1:12*nC
        p=share1(i,j);
        k=share2(i,j);
        l=share3(i,j);
        z=share4(i,j);
        if(p==0 && k==0 && l==0 && z==0)
            dc(i,j)=1;
        else
            dc(i,j)=0;
        end
    end
end
   

imwrite(share1,'sharesgenerated/share1.png','png');
imwrite(share2,'sharesgenerated/share2.png','png');
imwrite(share3,'sharesgenerated/share3.png','png');
imwrite(share4,'sharesgenerated/share4.png','png');
imwrite(dc,'output/decryptedoutputthreebyfourencryption.png','png');
fprintf('4 shares generated and saved in shares folder.output is saved in output folder');
        
        

    
            
                 
            