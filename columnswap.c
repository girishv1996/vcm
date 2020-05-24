

#include <stdio.h>
 
void main()
{
    static int  array[100][100];
    int array2[4][12] = {  
   {1,0,0,1,0,1,0,1,0,0,1,1} ,   /*  initializers for row indexed by 0 */
   {1,0,0,1,0,0,1,1,0,1,0,1} ,   /*  initializers for row indexed by 1 */
   {0,1,0,1,1,0,0,1,0,0,1,1} ,
   {0,1,0,1,0,0,1,1,1,0,0,1} ,  /*  initializers for row indexed by 2 */
};
    int i, j, m, n, a, b, c, p, q, r;
 
    printf("Enter the order of the matrix \n");
    scanf("%d %d", &m, &n);
    
    
    printf("Enter the numbers of two columns to be exchanged \n");
    scanf("%d %d", &p, &q);
    printf("The given matrix is \n");
    for (i = 0; i < m; ++i)
    {
        for (j = 0; j < n; ++j)
            printf(" %d", array2[i][j]);
        printf("\n");
    }
    for (i = 0; i < n; ++i)
    {
        /*  first column index is 0 */
        r = array2[i][p - 1];
        array2[i][p - 1] = array2[i][q - 1];
        array2[i][q - 1] = r;
     }
    
    printf("The matix after interchanging the two columns(in the original matrix) \n");
    for (i = 0; i < m; ++i)
    {
        for (j = 0; j < n; ++j)
            printf(" %d", array2[i][j]);
        printf("\n");
    }
    printf("\n");
    printf("\n");
    
    for(i=0;i<m;i++)
{
	for (j = 0; j < n; ++j)
	{
		printf(" %d,", array2[i][j]);
	}
	
}

}
