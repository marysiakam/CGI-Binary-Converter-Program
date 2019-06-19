#include <stdlib.h>
#include <stdio.h>

void convert_binary(int);
 
int  main(){
	int x;
        char *data = getenv("QUERY_STRING");
	

	sscanf(data, "num=%d", &x);

	printf("Content-Type:text/html\n\n");
	printf("<html>");
	convert_binary(x);
	printf("<html>");
	return 0;

}

void convert_binary(int dec){
	int binary[32];
	int i =0;
	
	if(dec ==0){
		printf("0");
		return;
	}
	while (dec>0){
		binary[i] = dec%2;
		dec = dec/2;
		i++;
	}
	for(int j = i-1; j>=0; j--){
		printf("%d", binary[j]);
	}
}
