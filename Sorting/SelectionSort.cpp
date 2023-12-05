#include<iostream>
using namespace std;
void selectionSort();
void selectionSortHighestToLowest();
void selectionSortForArrChar();
int main(){
    selectionSort();
}
void selectionSort(){
    int array[5] = {5, 4, 3, 2, 1};
    int length = 5;

    //Because outer loop works only n-1 times
    for(int i=0; i<length-1; i++){
        int index = i;
        for (int j=i+1; j<length; j++){
            if (array[index]>array[j]){
                index = j;
            }
        }
        swap(array[i], array[index]);
    }

    for(int i=0; i<length; i++){
        cout<<array[i]<<" ";
    }
}