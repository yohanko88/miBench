#include <stdio.h>

int main()
{
    int a[2][2], b[2][2], c[2][2];
    int i,j,k;
    int index = 0;
    int sum;
    for(i=0; i<2; i++) {
        for(j=0; j<2; j++) {
            a[i][j] = ++index;
        }
    }
    
    for(i=0; i<2; i++) {
        for(j=0; j<2; j++) {
            b[i][j] = ++index;
        }
    }
    
    for(i=0; i<2; i++) {
        for(j=0; j<2; j++) {
            sum = 0;
            for(k=0; k<2; k++) {
                sum = sum + a[i][k] * b[k][j];
            }
            c[i][j] = sum;
        }
    }
    
    for(i=0; i<2; i++) {
        for(j=0; j<2; j++) {
            printf("%d ", c[i][j]);
        }
    }
	printf("\n");
    return 0;
}