FILE1 = qsort_small.c
FILE2 = qsort_large.c

all: qsort_small qsort_large

qsort_small: qsort_small.c Makefile
	arm-linux-gnueabi-gcc -static qsort_small.c -O3 -o qsort_small_ARM -lm
	arm-linux-gnueabi-gcc -static -S qsort_small.c -O3 -lm
qsort_large: qsort_large.c Makefile
	gcc44 -static qsort_large.c -O3 -o qsort_large_x86 -lm

clean:
	rm -rf qsort_small qsort_large output*
