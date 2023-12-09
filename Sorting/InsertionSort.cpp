#include<iostream>
using namespace std;

void insertionSort();
void insertionSortDecreasing();
void insertionSortreverse();
int main(){
    //insertionSort();
    //insertionSortDecreasing();
    insertionSortreverse();
}
void insertionSort(){
    int array[1000];
    int length;
    cout<<"Enter size of array ";
    cin>>length;
    for (int index = 0; index<length; index++){
        cin>>array[index];
    }
    for(int i=1; i<length; i++)
    for(int j=i; j>0; j--){
        if(array[j-1]>array[j]){
            swap(array[j-1], array[j]);
        }
        else{
            break;
        }
    }
    cout<<endl<<"Here is ypur sorted array:"<<endl;
    for(int i=0; i<length; i++){
        cout<<array[i]<<" ";
    }

}

void insertionSortDecreasing(){
    int array[1000];
    int length;
    cout<<"Enter size of array ";
    cin>>length;
    for (int index = 0; index<length; index++){
        cin>>array[index];
    }
    for(int i=1; i<length; i++)
    for(int j=i; j>0; j--){
        if(array[j-1]<array[j]){
            swap(array[j-1], array[j]);
        }
        else{
            break;
        }
    }
    cout<<endl<<"Here is ypur sorted array:"<<endl;
    for(int i=0; i<length; i++){
        cout<<array[i]<<" ";
    }

}


void insertionSortreverse(){
    int array[1000];
    int length;
    cout<<"Enter size of array ";
    cin>>length;
    for (int index = 0; index<length; index++){
        cin>>array[index];
    }
    for(int i=length-2; i>=0; i--)
    for(int j=i; j<length-1; j++){
        if(array[j]>array[j+1]){
            swap(array[j], array[j+1]);
        }
        else{
            break;
        }
    }
    cout<<endl<<"Here is ypur sorted array:"<<endl;
    for(int i=0; i<length; i++){
        cout<<array[i]<<" ";
    }
}