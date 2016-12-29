patricia: patricia.c patricia_test.c
	gcc -static patricia.c patricia_test.c -O3 -o patricia
	arm-linux-gnueabi-gcc -static patricia.c patricia_test.c -O3 -o patricia_ARM

clean:
	rm -rf patricia output*
