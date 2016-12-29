susan: susan.c Makefile
	gcc -static -O4 -o susan_X86 susan.c -lm 
	arm-linux-gnueabi-gcc -static -O4 -o susan_ARM susan.c -lm

clean:
	rm -rf susan_* output*
