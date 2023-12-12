#include<iostream>
using namespace std;

void binarysearch();
int binarysearchfordecreasingElemet();
int main(){
    //binarysearch();
    cout<<"Index of element is "<< binarysearchfordecreasingElemet();
}

void binarysearch(){
    int array[5] = {1, 2, 3, 4, 5};
    int n = 5;
    int start = 0, end = n-1, mid=0;
    int key = 15;
    bool isfound = false;
    while (start<=end)
    {
        mid = (start+end)/2;
        if (array[mid]==key){
            isfound = true;
            break;
        }
        else if (array[mid]<key){
            start = mid+1;
        }
        else{
            end = mid-1;
        }
    }
    
    if (isfound){
        cout<<"Found element";
    }else{
         cout<<"Sorry we miss that";
    }
}

int binarysearchfordecreasingElemet(){
    int array[5] = {5,4, 3, 2, 1};
    int n = 5;
    int start = 0, end = n-1, mid=0;
    int key = 25;
    bool isfound = false;
    while (start<=end)
    {
        mid = (start+end)/2;
        if (array[mid]==key){
            return mid;
        }
        else if (array[mid]<key){
            end = mid-1;
        }
        else{
            start = mid+1;
        }
    }
    return -1;
    
}