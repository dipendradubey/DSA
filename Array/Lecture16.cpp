#include <iostream>
using namespace std;
void reverseArray();
void secondHighestElement();
void rotateElementInArray();
void thirdSmallestElement();
int main(){
    //reverseArray();
    //secondHighestElement();
    //rotateElementInArray();
    thirdSmallestElement();
}

void reverseArray(){
    int array[5] = {1, 2, 3, 4, 5};
    int i=0, j=5-1;
    while (i<j){
        swap(array[i], array[j]);
        i++;
        j--;
    }
    for (int i=0; i<5; i++){
        cout<<array[i];
    }
}

void secondHighestElement(){
    int array[5] = {1, 2, 3, 4, 5};
    int maxno = INT_MIN;
    int secondHighest = INT_MIN;
    for (int i=0; i<5; i++){
        if (array[i]>maxno){
            maxno = array[i];
        }
    }

    for (int i=0; i<5; i++){
        if (array[i]!=maxno){
            if (array[i]>secondHighest){
                secondHighest = array[i];
            }
        }
    }
    if (secondHighest == INT_MIN){
        secondHighest = -1;
    }
    cout<<endl<<secondHighest;
}

void rotateElementInArray(){

    int array[5] = {1, 2, 3, 4, 5};
    int count = 5;
    int tempElement = array[count-1];
    for (int index=count-1; index>=1; index--){
        array[index] = array[index-1];
    }
    array[0]=tempElement;
    for (int index=0; index<count; index++){
        cout<<array[index];
    } 
}

void thirdSmallestElement(){
     int array[5] = {5, 4, 2, 2, 2};
    int count = 5;
    int s1=INT_MAX;
    int s2=INT_MAX;
    int s3=INT_MAX;

    for (int index=0; index<count; index++){
        if (s1>array[index]){
            s3=s2;
            s2=s1;
            s1=array[index];
        } 
        else if (s2>array[index]){
            s3=s2;
            s2=array[index];
        } 
        else if (s3>array[index]){
            s3=array[index];
        } 
    }
    cout<<s1 <<" "<<s2 <<" " <<  s3;
}