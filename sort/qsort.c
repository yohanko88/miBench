#include <stdio.h>

void main()
{
	int a[50] = {271, 579, 577, 600, 171, 897, 315, 425, 842, 999, 349, 929, 996, 86, 916, 239, 54, 190, 349, 33, 558, 504, 193, 282, 261, 512, 543, 616, 964, 302, 380, 628, 703, 897, 233, 987, 132, 80, 373, 458, 330, 897, 315, 728, 251, 168, 141, 708, 228, 627};
	quickSort(a, 0, 49);
}

void quickSort( int a[], int l, int r)
{
	int j;

	if( l < r ) 
	{
		// divide and conquer
		j = partition( a, l, r);
		quickSort( a, l, j-1);
		quickSort( a, j+1, r);
	}	
}

int partition( int a[], int l, int r) {
	int pivot, i, j, t;
	pivot = a[l];
	i = l; j = r+1;
		
	while(1)
	{
		do ++i; while( a[i] <= pivot && i <= r );
		do --j; while( a[j] > pivot );
		if( i >= j ) break;
		t = a[i]; a[i] = a[j]; a[j] = t;
	}
	t = a[l]; a[l] = a[j]; a[j] = t;
	return j;
}
