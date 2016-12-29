FILE1 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_small.c 
FILE2 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_large.c 

all: search_small search_large

search_small: ${FILE1} Makefile
	#/home/yohan/sparc64-unknown-linux-gnu/bin/sparc64-unknown-linux-gnu-gcc -static ${FILE1} -O3 -o search_small_sparc
	#/home/yohan/mips-2014.11/bin/mips-linux-gnu-gcc -static ${FILE1} -EL -O3 -o search_small_mips
	gcc  -static ${FILE1} -O3 -o search_small_X86 
	arm-linux-gnueabi-gcc -S -static ${FILE1} -O3
	arm-linux-gnueabi-gcc -S -static ${FILE1} -O3
	arm-linux-gnueabi-gcc -static ${FILE1} -O3  -O3 -o search_small_ARM
	#/home/yohan/powerpc-eabi/bin/powerpc-eabi-gcc  -static ${FILE1} -O3 -o search_small_power

search_large: ${FILE2} Makefile
	gcc -static ${FILE2} -O3 -o search_large_x86

clean:
	rm -rf search_small_* search_large output*
