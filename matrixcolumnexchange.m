a = [0,0,0,0,1,1,1,1;0,0,1,1,0,0,1,1; 0,1,0,1,0,1,0,1; 0,1,1,0,1,0,0,1];
r=4;
c=8;


for i = 1:r
    for j=i:c
        if(i~=j)
            b=a;
            temp=b(:,i);
            b(:,i)=b(:,j);
            b(:,j)=temp;
            fprintf('Exchanging column %d and %d ',i,j);
            fprintf('\n');
            disp(b);
            fprintf('[');
             for n=1:r
                for m=1:c
                    fprintf('%d,',b(n,m));
                end
             end
            fprintf('];');
            fprintf('\n');
           
            
            
        end
    end
end
            
            
            
    
    