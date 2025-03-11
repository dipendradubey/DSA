#include<iostream>
using namespace std;

void sumDigit();
void powerOf2(int n);
void powerOf2Binary(int num);
int bitwiseComplement(int n);
int sqrt();
int main(){
    //sumDigit();
    //powerOf2(128);
    //powerOf2Binary(256);
    //cout<<sqrt()<<endl;
    cout<<bitwiseComplement(5)<<endl;
    return 0;
}
void sumDigit(){
    int num = 0;
    cout<<"Please enter the num"<<endl;
    cin>>num;
    while (num>9){
        int ans = 0;
        while(num){
        int rem = num%10;
        num/=10;
        ans+=rem;
        }
        num = ans;
    }
    
    cout<<endl<<"sum of all digit is: "<<num;
}

void reverseNum()
{
    int n = 12300;
    int ans = 0;
    int multiply = 10;
    while(n > 0){
        int rem = n%10; //3 2
        n = n/10; //12 1
        if (ans >= INT_MIN/10 && ans <= INT_MAX/10){
            ans = ans*multiply + rem;
        }
        //multiply*=10;
    }
    cout<<"reverse no is: "<<ans<<endl;
}

void powerOf2(int n){
    if (n < 1){
        cout<<"This no is not power of 2";
        return;
    }
    int value = 1;
    while (n>=value){
        if (n==value){
            cout<<"This no is power of 2";
            return;
        }
        else{
            value = value*2;
        }
    }
    cout<<"This no is not power of 2";
}

void powerOf2Binary(int num){
    if (num < 1){
        cout<<"This no is not power of 2";
        return;
    }
    int value = 1;
        while (num != 1){
            int rem = num%2;
            num/=2;
            if (rem==1){
                cout<<endl<<"This no is not power of 2";
                break;
            }
        }
        if (num==1)
        cout<<"This no is of power of 2";
}

int sqrt(){
    int num = 0;
    cout<<endl<<"Enter number";
    cin>>num;
    int value = 1;
    while (value*value <= num){
        if (value*value==num){
            //cout <<"Real squrt is "<<value;
            return value;
        }
        value+=1;
    }
    return value-1;
}

int bitwiseComplement(int n){
        if (n==0){return 1;}
        int num = n;
        int ans = 0;
        int multiply = 1;
        while (num>0){
            int rem = num%2;
            num/=2;
            int com = rem^1;//rem == 1 ? 0 : 1
            ans += com*multiply;
            multiply*=2;
        }
        return ans;
    }