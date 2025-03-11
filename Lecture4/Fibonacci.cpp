#include <iostream>
using namespace std;

void printFibonacciElement();
void nthFibonacciElement();
int main(){
    printFibonacciElement();
    nthFibonacciElement();
    return 0;
}
//This code print fibonacci series
void printFibonacciElement(){
    int firstNo=0;
    int secondNo=1;
    int num = 10;
    cout<<firstNo<<endl;
    cout<<secondNo<<endl;
    for (int i=3; i<=num; i++){
        int temNum = firstNo+secondNo;
        cout<<temNum<<endl;
        firstNo = secondNo;
        secondNo = temNum;
    }
}

//This code find nth Fibonacci element
void nthFibonacciElement(){
    int firstNo=0;
    int secondNo=1;
    int currentElement = 0;
    int num = 10;
    cin>>num;
    if (num == 1){
        cout<<num<<"th element is" << 0;
        return;
    }
    else if (num == 2){
        cout<<num<<"th element is" << 1;
        return;
    }
    for (int i=3; i<=num; i++){
        currentElement = firstNo + secondNo;
        firstNo = secondNo;
        secondNo = currentElement;
    }
    cout<<num<<"th element is" << currentElement;
}