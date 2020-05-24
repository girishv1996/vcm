function [shares] =twod()
one = imread('decryptshares/share1.png');
two = imread('decryptshares/share2.png');
%figure;imshow(one);title('Share1');
%figure;imshow(two);title('Share3');
one=im2bw(one);
two=im2bw(two);
[nR, nC] = size(one);
output = zeros(nR, nC);
for i = 1:nR
    for j = 1:nC
        p=one(i,j);
        k=two(i,j);
        if(p==0 && k==0)
            output(i,j)=1;
        else
            output(i,j)=0;
        end
    end
end
   % figure;
%imshow(output);
imwrite(output,'GENERATEDOUTPUT/decryptedoutputtwobytwo.png','png');
fprintf('2 shares combined .output is saved in GENERATEDOUTPUT folder\n');

