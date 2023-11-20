#include <iostream>
using namespace std;

void printPattern1();
void printPattern2();

int main()
{
    printPattern2();
    return 0;
}
void printPattern1(){
    int n=5;
    for (int row=1; row<=n; row++){
        for (int col=1; col<=n-row+1; col++){
                cout<<col<<" ";
            }
        cout<<endl;
    }
}

void printPattern2(){
    int n=4;
    for (int row=1; row<=n; row++){
        for (int col=1; col<=n-row+1; col++){
            char c = 'A' + col - 1;
                cout<<c<<" ";
            }
        cout<<endl;
    }
}
    