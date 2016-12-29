#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define UNLIMIT
#define MAXARRAY 60000 /* this number, if too large, will cause a seg. fault!! */

struct myStringStruct {
  char qstring[128];
};

struct myStringStruct temp;

void sort_words(struct myStringStruct x[], int y);
void swap(struct myStringStruct *, struct myStringStruct *);

int main(int argc, char *argv[]) {
 struct myStringStruct array[MAXARRAY];
 FILE* fp;
 int i,count = 0;
 
 fp = fopen(argv[1],"r");
    
	while((fscanf(fp, "%s", &array[count].qstring) == 1) && (count < MAXARRAY)) {
	 count++;
	}
	
 sort_words(array, count);
 
  for(i = 0; i < count; ++i)
   printf("%s\n", array[i].qstring);

  return(0);
}

void sort_words(struct myStringStruct x[], int y) {
 int i = 0;
 int j = 0;

 for(i = 0; i < y; ++i)
  for(j = i + 1; j < y; ++j)
   if(strcmp(x[i].qstring, x[j].qstring) < 0)
    swap(&x[i], &x[j]);
}

void swap(struct myStringStruct *p, struct myStringStruct *q) {
 memcpy(&temp, p, sizeof(struct myStringStruct));
 memcpy(p, q, sizeof(struct myStringStruct));
 memcpy(q, &temp, sizeof(struct myStringStruct));
}
