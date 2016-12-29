#include <stdio.h>

void main()
{
	int a[50] = {271, 579, 577, 600, 171, 897, 315, 425, 842, 999, 349, 929, 996, 86, 916, 239, 54, 190, 349, 33, 558, 504, 193, 282, 261, 512, 543, 616, 964, 302, 380, 628, 703, 897, 233, 987, 132, 80, 373, 458, 330, 897, 315, 728, 251, 168, 141, 708, 228, 627};
	heapsort(a, 50);
}

void downHeap(int a[], int root, int bottom)
{
	int maxchild, temp, child;
	while (root*2 < bottom)
	{
		child = root * 2 + 1;
		if (child == bottom)
		{
			maxchild = child;
		}
		else
		{
			if (a[child] > a[child + 1])
				maxchild = child;
			else
				maxchild = child + 1;
		}

		if (a[root] < a[maxchild])
		{
			temp = a[root];
			a[root] = a[maxchild];
			a[maxchild] = temp;
		}
		else return;

		root = maxchild;
	}
}

void heapsort(int a[], int array_size)
{
	int i;
	for (i = (array_size/2 -1); i >= 0; --i)
	{
		downHeap(a, i, array_size-1);
	}

	for (i = array_size-1; i >= 0; --i)
	{
		int temp;
		temp = a[i];
		a[i] = a[0];
		a[0] = temp;
		downHeap(a, 0, i-1);
	}
}
