#include <iostream>
using namespace std;

void printPattern1();
void printPattern2();
void printPattern3();
void printPattern4();
int main(){
    //printPattern1();
    //printPattern2();
    //printPattern3();
    printPattern4();
}

void printPattern1(){
    /*
    12345
    12345
    12345
    12345
    */
   for (int i=1; i<=5; i++){
        for (int j=5; j>=1; j--){
            cout<<j<<" ";
        }
        cout<<endl;
   }

}

void printPattern2(){
    /*
    1 2 3 4 5
    6 7 8 9 10
    11 12 13 14 15
    16 17 18 19 20
    */
   int num = 5;
   for (int row=1; row<=5; row++){
        for (int col=1; col<=5; col++){
            cout<<num*(row-1)+col<<" ";
        }
        cout<<endl;
   }

}

void printPattern3(){
    /*
    a a a a a
    b b b b b
    c c c c c
    */
   for (int row=1; row<=5; row++){
        for (int col=1; col<=5; col++){
            char c = 'a'+row-1;
            cout<<c<<" ";
        }
        cout<<endl;
   }

}

void printPattern4(){
    /*
   1    2   3   4   5
        2   3   4   5
            3   4   5
                4   5
                    5
    */
   int num = 5;
   for (int row=1; row<=num; row++){
        for (int space=1; space<row; space++){
            cout<<" ";
        }

        for (int col=row; col<=num; col++){
            cout<<col;
        }
        cout<<endl;
   }

}