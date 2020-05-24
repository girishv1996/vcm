fprintf('\t\t\t\tNOTE  \n1.The name of the input file should be only secret and it should be placed in input folder\n 2.The input should be less than or equal to 4\n 3.Shares will be saved in SHARES folder\n 4.output will be stored in output folder.\n');
n = input('Enter th minimum Number of shares to generate output: '); 
k=input('Enter the Maximum number of shares: ');
Imgin = imread('secret.png');
if(n>4 || k>4)
    fprintf('Please Enter the number of shares less than than 4\n');
else
    fprintf('input looks good..!\n');
    fprintf('.......Encrypting might take more time\n');
end

if(n==2 && k==2)
twobyrwoe(Imgin);
elseif(n==2 && k==3)
twocumthre(Imgin)
elseif(n==2 && k==4)
twobyfoure(Imgin)
elseif(n==3 && k==3)
threebythreee(Imgin)
elseif(n==4 && k==4)
fourbyfour(Imgin)
elseif(n==3 && k==4)
fourbythree(Imgin)
else
  fprintf('It seems you have provided wrong input....\n');
end



if(n>1 && n<=4 && k>1 && k<=4)
figure;imshow(Imgin);title('Secret Image you have given');
end