#include <stdio.h>

int main()
{
    int a[10][10], b[10][10], c[10][10];
    int i,j,k;
    int index = 0;
    int sum;
    for(i=0; i<10; i++) {
        for(j=0; j<10; j++) {
            a[i][j] = ++index;
        }
    }
    
    for(i=0; i<10; i++) {
        for(j=0; j<10; j++) {
            b[i][j] = ++index;
        }
    }
    
    for(i=0; i<10; i++) {
        for(j=0; j<10; j++) {
            sum = 0;
            for(k=0; k<10; k++) {
                sum = sum + a[i][k] * b[k][j];
            }
            c[i][j] = sum;
        }
    }
    
    for(i=0; i<10; i++) {
        for(j=0; j<10; j++) {
            printf("%d ", c[i][j]);
        }
		printf("\n");
    }
    return 0;
}