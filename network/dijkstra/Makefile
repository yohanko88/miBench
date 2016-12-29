all:  dijkstra_large dijkstra_small

dijkstra_large: dijkstra_large.c Makefile
	gcc -static dijkstra_large.c -O3 -o dijkstra_large_x86

dijkstra_small: dijkstra_small.c Makefile
	gcc -static dijkstra_small.c -O3 -o dijkstra_small_X86
	arm-linux-gnueabi-gcc -static dijkstra_small.c -O3 -o dijkstra_small_ARM

clean:
	rm -rf dijkstra_large_* dijkstra_small_* output*
