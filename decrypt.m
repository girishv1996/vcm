fprintf('\t\t\t\tNOTE  \n1.The name of the files  should be share1,share2..sharen and files  should be placed in decryptshares folder\n 2.The input should be less than or equal to 4\n 3.output will be saved in GENERATEDOUTPUT folder\n');
n = input('Enter the number of shares you want to decrypt: '); 
if(n>4)
    fprintf('Please Enter the number of shares less than than 4\n');
else
    fprintf('input looks good..!\n');
end
fprintf('Derypting.......Decrypting might take time\n');
if(n==2)
    twod();
elseif(n==3)
    threed();
    elseif(n==4)
    fourd();
else
    fprintf('WRONG INPUT..........!\n');
    
end 
    