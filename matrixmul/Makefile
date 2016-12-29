matmul: matmul.c
	arm-linux-gnueabi-gcc -S -static -O3  matmul.c -o matmul_ARM.s
	arm-linux-gnueabi-gcc -static -O3  matmul.c -o matmul_ARM
	arm-linux-gnueabi-gcc -S -static -O3  matmul_large.c -o matmul_ARM_large.s
	arm-linux-gnueabi-gcc -static -O3  matmul_large.c -o matmul_ARM_large

clean:
	rm -rf matmul_*
