#include <stdio.h>

void reverse (int* arr, int size);

int main()
{
	int arr[7] = {1,2,3,4,5,6,7};
	reverse(arr,7);
	for(int i = 0; i< 7; i++)
	{
		printf(" %d ", arr[i]);
	
	}
}

