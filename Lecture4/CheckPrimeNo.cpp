#include<iostream>
using namespace std;
 int main()
{
    int num = 0;
    cout<<"Enter prime no to check ";
    cin>>num;
    if (num<2){
        cout<<"It's not prime no";
        return 0;
    }
    for(int i=2; i<num; i++){
        if (num%i==0){
            cout<<"It's not prime no";
            return 0;
        }
    }
    cout<<"It's prime no";
    return 0;
}
