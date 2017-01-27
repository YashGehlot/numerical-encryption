// GroupID-78 (15116040_15116075) - YASH GEHLOT & PRAJJWAL RANA
// Date: November 4, 2016
//<Problem66>.c - Problem 66
#include <stdio.h>
#include<string.h>
int main()
{
    
	char myArray[50];					//character array declared
    printf("Enter you String \n");		//asking user to enter the string for encryption
    scanf("%s", myArray);				//storing the input int the character array declared above
    int n = strlen(myArray);			//calculating the length of the input string
    printf("%s \n", myArray);			//displayng the input 	
    int i = 0;
	do				
	{
        if(myArray[i]==48) myArray[i]=52;			//checking for 0 and replacing by 4
        else if(myArray[i]==49) myArray[i]=54;		//checking for 1 and replacing by 6
        else if(myArray[i]==50) myArray[i]=57;		//checking for 2 and replacing by 9
        else if(myArray[i]==51) myArray[i]=53;		//checking for 3 and replacing by 5
        else if(myArray[i]==52) myArray[i]=48;		//checking for 4 and replacing by 0
        else if(myArray[i]==53) myArray[i]=51;		//checking for 5 and replacing by 3
        else if(myArray[i]==54) myArray[i]=49;		//checking for 6 and replacing by 1
        else if(myArray[i]==55) myArray[i]=56;		//checking for 7 and replacing by 8
        else if(myArray[i]==56) myArray[i]=55;		//checking for 8 and replacing by 7
        else if(myArray[i]==57) myArray[i]=50;
		i++;		//checking for 9 and replacing by 2
    }while(i<n);
   printf("%s \n", myArray);			//displaying the encrypted string 
    return 0;
}

