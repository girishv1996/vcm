function [shares] =twocumthre(Imgin)
inImg=im2bw(Imgin);
w0=[1,1,0,1,1,0,1,1,0];
w1=[1,0,1,1,0,1,1,0,1];
w2=[0,1,1,0,1,1,0,1,1];


b0=[0,1,1,1,0,1,1,1,0];
b1=[0,1,1,1,1,0,1,0,1];
b2=[1,1,0,1,0,1,0,1,1];
[nR, nC] = size(inImg);
share1 = zeros(nR, 3*nC);
share2 = zeros(nR, 3*nC);
share3 = zeros(nR, 3*nC);
dc = zeros(nR, 3*nC);
c=3;
v=2;
for i = 1:nR
    for j = 1:nC
        n=randi(1:2:3);
            if(n==1)
                g=w0;h=b0;
            
            elseif(n==2)
                g=w1;h=b1;
             
            else
                    g=w2; h=b2;
            end
        
        if inImg(i,j) == 1 
            
            
            share1(i,(j*c)-v)=g(1,1);
            share1(i,(j*c+1)-v)=g(1,2);
            share1(i,(j*c+2)-v)=g(1,3);
            share2(i,(j*c)-v)=g(1,4);
            share2(i,(j*c+1)-v)=g(1,5);
            share2(i,(j*c+2)-v)=g(1,6);
            share3(i,(j*c)-v)=g(1,7);
            share3(i,(j*c+1)-v)=g(1,8);
            share3(i,(j*c+2)-v)=g(1,9);
            
        else
            share1(i,(j*c)-v)=h(1,1);
            share1(i,(j*c+1)-v)=h(1,2);
            share1(i,(j*c+2)-v)=h(1,3);
            share2(i,(j*c)-v)=h(1,4);
            share2(i,(j*c+1)-v)=h(1,5);
            share2(i,(j*c+2)-v)=h(1,6);
            share3(i,(j*c)-v)=h(1,7);
            share3(i,(j*c+1)-v)=h(1,8);
            share3(i,(j*c+2)-v)=h(1,9);
           
            
            
        end
    end
end
%figure;
%imshow(share1);
%figure;
%imshow(share2);
%figure;
%imshow(share3);


for i = 1:nR
    for j = 1:3*nC
        p=share1(i,j);
        k=share2(i,j);
        l=share3(i,j);
        if(p==0 && k==0 && l==0)
            dc(i,j)=1;
        else
            dc(i,j)=0;
        end
    end
end
    %figure;
%imshow(dc);
imwrite(share1,'sharesgenerated/share1.png','png');
imwrite(share2,'sharesgenerated/share2.png','png');
imwrite(share3,'sharesgenerated/share3.png','png');
imwrite(dc,'output/decryptedoutputtwobythreeencryption.png','png');
fprintf('3 shares generated and saved in shares folder.output is saved in output folder');
        
        

    
            
                 
            