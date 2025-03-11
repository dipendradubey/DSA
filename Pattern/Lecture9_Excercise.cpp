#include <iostream>
using namespace std;

void pattern1(int n);
void pattern2(int n);
void pattern3(int n);
void pattern4(int n);
int main(){
    //pattern1(8);
    //pattern2(10);
    //pattern3(8);
    pattern4(10);
}

void pattern1(int n){
    /*
     *
    *  *
   *  *  *
  *  *  *  *
*  *  *  *  *  
*/
    for (int row=1; row<=n; row++){
        for (int space=1; space<=n-row; space++){
            cout<<" ";
        }
        for (int col=1; col<=row; col++){
            cout<<"* ";
        }
        cout<<endl;
    }
    
}

void pattern2(int n){
    /*
            1
          1 2 3
        1 2 3 4 5
      1 2 3 4 5 6 7
    1 2 3 4 5 6 7 8 9
 */
    for (int row=1; row<=n; row++){
        for (int space=1; space<=n-row; space++){
            cout<<"  ";
        }
        for (int col=1; col<=2*row-1; col++){
            cout<<col<<" ";
        }
        cout<<endl;
    }
}

void pattern3(int n){
    /*
            A
          A B A
        A B C B A
      A B C D C B A
    A B C D E D C B A
 */
    for (int row=1; row<=n; row++){
        for (int space=1; space<=n-row; space++){
            cout<<"  ";
        }
        for (int col=1; col<=row; col++){
            char c = 'A' + col - 1;
            cout<<c<<" ";
        }
        for (int col=row-1; col>=1; col--){
            char c = 'A' + col - 1;
            cout<<c<<" ";
        }
        cout<<endl;
    }
}

void pattern4(int n){
    /*
     *
    * *
   * * *
  * * * *
 * * * * * 
 * * * * * 
  * * * *  
   * * *
    * *
     * 
    */
   for (int row=1; row<=n;row++){
    for (int space=1; space<=n-row; space++){
        cout<<" ";
    }
    for (int col=1; col<=row; col++){
        cout<<"* ";
    }
    cout<<endl;
   }

   for (int row=1; row<=n;row++){
    for (int space=1; space<=row-1; space++){
        cout<<" ";
    }
    for (int col=1; col<=n-(row-1); col++){
        cout<<"* ";
    }
    cout<<endl;
   } 

}