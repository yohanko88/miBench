#include <stdio.h>

void main()
{
	int a[50] = {271, 579, 577, 600, 171, 897, 315, 425, 842, 999, 349, 929, 996, 86, 916, 239, 54, 190, 349, 33, 558, 504, 193, 282, 261, 512, 543, 616, 964, 302, 380, 628, 703, 897, 233, 987, 132, 80, 373, 458, 330, 897, 315, 728, 251, 168, 141, 708, 228, 627};
	BubbleSort(a, 50);
}

void BubbleSort(int a[], int array_size)
{
	int i, j, temp;
	for (i = 0; i < (array_size - 1); ++i)
	{
		for (j = 0; j < array_size - 1 - i; ++j )
		{
			if (a[j] > a[j+1])
			{
				temp = a[j+1];
				a[j+1] = a[j];
				a[j] = temp;
			}
		}
	}
}
