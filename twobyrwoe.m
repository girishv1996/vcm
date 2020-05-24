function [shares] = twobyrwoe(Imgin)
%Imgin = imread('secret.png');
%figure;imshow(Imgin);title('Secret Image');
inImg=im2bw(Imgin);
w0=[1,0,1,0];
w1=[0,1,0,1];

b0=[1,0,0,1];
b1=[0,1,1,0];
[nR, nC] = size(inImg);
share1 = zeros(nR, 2*nC);
share2 = zeros(nR, 2*nC);
dc = zeros(nR, 2*nC);
for i = 1:nR
    for j = 1:nC
        n=randi(1:2);
            if(n==1)
                g=w0;h=b0;
            else
                g=w1;h=b1;
            end
        
        if inImg(i,j) == 1 
            
            
            share1(i,(j*2)-1)=g(1,1);
            share1(i,(j*2+1)-1)=g(1,2);
            share2(i,(j*2)-1)=g(1,3);
            share2(i,(j*2+1)-1)=g(1,4);
            
        else
            
            share1(i,(j*2)-1)=h(1,1);
            share1(i,(j*2+1)-1)=h(1,2);
            share2(i,(j*2)-1)=h(1,3);
            share2(i,(j*2+1)-1)=h(1,4);
        end
    end
end
%figure;
%imshow(share1);
%figure;
%imshow(share2);


for i = 1:nR
    for j = 1:2*nC
        p=share1(i,j);
        k=share2(i,j);
        if(p==0 && k==0)
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
imwrite(dc,'output/twobytwodecryptedoutput.png','png');
fprintf('2 shares generated and saved in shares folder.output is saved in output folder');
        
        

    
            
                 
            