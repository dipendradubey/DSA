#include<iostream>
using namespace std;

void pattern1(int n);
void pattern2(int n);
void pattern3(int n);
void pattern4(int n);
int main(){
    //pattern1(9);
    //pattern2(5);
    pattern4(7);
    return 0;
}
void pattern1(int n){
    /*
        *
       ***
      *****
     *******
    *********
    */

   for (int row=1; row<=n; row++){
    for (int space=1;space<=n-row;space++){
        cout<<" ";
    }
    for (int col=1; col<=2*row-1;col++){
        cout<<"*";
    }
    cout <<endl;
   }
}

void pattern2(int n){
    /*
        1
       121
      12321
     1234321
    123454321
    */

   for (int row=1; row<=n; row++){
    for (int space=1;space<=n-row;space++){
        cout<<" ";
    }
    for (int col=1; col<=row;col++){
        cout<<col;
    }
    for (int col=row-1; col>=1;col--){
        cout<<col;
    }
    cout <<endl;
   }
}

void pattern3(int n){
    /*
    *********
     *******
      *****
       ***
        *
    */

   for (int row=1; row<=n; row++){
    for (int space=1; space<row; space++){
        cout<<" ";
    }
    for (int col=1; col<=2*(n-row)+1; col++){
        cout<<"*";
    }
    cout<<endl;
   }
}

void pattern4(int n){
    // n= 4
    /*
    ********
    ***  ***
    **    **
    *      *
    *      *
    **    **
    ***  ***
    ********   
    */

   for (int row=1; row<=n; row++){
    for (int col=1; col<=n-row+1; col++){
        cout<<"*";
    }
    for (int space=1; space<=2*(row-1); space++){
        cout<<" ";
    }
    for (int col=1; col<=n-row+1; col++){
        cout<<"*";
    }
    cout<<endl;
   }
   for (int row=1; row<=n; row++){
    for (int col=1; col<=row; col++){
        cout<<"*";
    }
    for (int space=1; space<=2*(n-row); space++){
        cout<<" ";
    }
    for (int col=1; col<=row; col++){
        cout<<"*";
    }
    cout<<endl;
   } 
}
