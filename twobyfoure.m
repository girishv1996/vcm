function [shares] = twobyfoure(Imgin)
inImg=im2bw(Imgin);
w0=[1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0];
w1=[0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1];
w2=[1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1];


b0=[1,0,1,1,0,1,1,1,1,1,0,1,1,1,1,0];
b1=[1,1,0,1,1,0,1,1,0,1,1,1,1,1,1,0];
b2=[1,1,1,0,1,0,1,1,1,1,0,1,0,1,1,1];
[nR, nC] = size(inImg);
share1 = zeros(nR, 4*nC);
share2 = zeros(nR, 4*nC);
share3 = zeros(nR, 4*nC);
share4 = zeros(nR, 4*nC);
dc = zeros(nR, 4*nC);
c=4;
v=3;
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
            share1(i,(j*c+3)-v)=g(1,4);
            share2(i,(j*c)-v)=g(1,5);
            share2(i,(j*c+1)-v)=g(1,6);
            share2(i,(j*c+2)-v)=g(1,7);
            share2(i,(j*c+3)-v)=g(1,8);
            share3(i,(j*c)-v)=g(1,9);
            share3(i,(j*c+1)-v)=g(1,10);
            share3(i,(j*c+2)-v)=g(1,11);
            share3(i,(j*c+3)-v)=g(1,12);
            share4(i,(j*c)-v)=g(1,13);
            share4(i,(j*c+1)-v)=g(1,14);
            share4(i,(j*c+2)-v)=g(1,15);
            share4(i,(j*c+3)-v)=g(1,16);
            
        else
            share1(i,(j*c)-v)=h(1,1);
            share1(i,(j*c+1)-v)=h(1,2);
            share1(i,(j*c+2)-v)=h(1,3);
            share1(i,(j*c+3)-v)=h(1,4);
            share2(i,(j*c)-v)=h(1,5);
            share2(i,(j*c+1)-v)=h(1,6);
            share2(i,(j*c+2)-v)=h(1,7);
            share2(i,(j*c+3)-v)=h(1,8);
            share3(i,(j*c)-v)=h(1,9);
            share3(i,(j*c+1)-v)=h(1,10);
            share3(i,(j*c+2)-v)=h(1,11);
            share3(i,(j*c+3)-v)=h(1,12);
            share4(i,(j*c)-v)=h(1,13);
            share4(i,(j*c+1)-v)=h(1,14);
            share4(i,(j*c+2)-v)=h(1,15);
            share4(i,(j*c+3)-v)=h(1,16);
           
            
            
        end
    end
end
%figure;
%imshow(share1);
%figure;
%imshow(share2);
%figure;
%imshow(share3);
%figure;
%imshow(share4);


for i = 1:nR
    for j = 1:4*nC
        p=share1(i,j);
        k=share2(i,j);
        l=share3(i,j);
        s=share4(i,j);
        if(p==0 && k==0 && l==0 && s==0)
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
imwrite(share4,'sharesgenerated/share4.png','png');
imwrite(dc,'output/decryptedoutputtwobyfourencryption.png','png');
fprintf('4 shares generated and saved in shares folder.output is saved in output folder');
        
        

    
            
                 
            