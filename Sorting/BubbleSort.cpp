#include<iostream>
using namespace std;

void bubbleSort();
//Home work
void bubbleSortDecreasing();
void bubbleSortSwappingFromFirst();
void bubbleSortForchar();

int main(){
    //bubbleSort();
    //bubbleSortDecreasing();
    //bubbleSortSwappingFromFirst();
    bubbleSortForchar();
}

void bubbleSort(){
    int length = 5;
    int array[5] = {4, 1, 3, 9, 7};
    for (int i=length-2; i>=0;i--){
        int isSwapped = 0;
        for (int j=0; j<= i; j++){
            if (array[j]>array[j+1]){
                isSwapped = 1;
                swap(array[j],array[j+1]);
            }
        }
        //That means array is already sorted so break the loop
        if (isSwapped==0){
            break;
        }
    }

    for (int i=0; i<length;i++){
        cout<<array[i]<<" ";
    }
}

void bubbleSortDecreasing(){
    int array[5] = {1, 2, 3, 4, 5};
    int length = 5;
   
    for (int i=length-2; i>=0; i--){
        bool isSwapped = false;
        for (int j=0; j<=i; j++){
            if (array[j+1]>array[j]){
                swap(array[j+1], array[j]);
                isSwapped = true;
            }
        }
        if (!isSwapped)
        break;
    }
    for (int i=0; i<length;i++){
        cout<<array[i]<<" ";
    }
}
void bubbleSortSwappingFromFirst(){
    int array[5] = {500, 100, 50, 400, 80};
    int length = 5;
    //int i = 1;
    for(int i=0; i<length-1;i++)
    {
        //n-1 - 0
        //n-1 - 1
        //n-1 - 2
        bool isSwapped = false;
        for(int j = length-1; j > i; j--) 
        {
            //If previous element > next elelment then swap
            if (array[j-1] > array[j])
            {   isSwapped = true;
                swap(array[j-1], array[j]);
            }
        }
        if (!isSwapped)
        {
            break;
        }
    }

    for (int i=0; i<length;i++){
        cout<<array[i]<<" ";
    }
}
void bubbleSortForchar(){
int length = 5;
    int array[5] = {'u', 'o', 'i', 'e', 'a'};
    for (int i=length-2; i>=0;i--){
        int isSwapped = 0;
        for (int j=0; j<= i; j++){
            if (array[j]>array[j+1]){
                isSwapped = 1;
                swap(array[j],array[j+1]);
            }
        }
        //That means array is already sorted so break the loop
        if (isSwapped==0){
            break;
        }
    }

    for (int i=0; i<length;i++){
        char data = array[i];
        cout<<data<<" ";
    }
}