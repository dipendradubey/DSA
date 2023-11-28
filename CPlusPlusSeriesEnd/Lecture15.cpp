#include<iostream>
using namespace std;
void convertSmallToCapital(char c);
void armStrongNo();
int main(){
    //convertSmallToCapital('p');
    armStrongNo();
    return 0;
}

void convertSmallToCapital(char name){
    char d = name-'a'+'A'; //c - 32;
    cout<<d;
}

void armStrongNo(){
    int n = 0;
    cin>>n;
    int count = 0;
    int num = n;
    int ans = 0;
    while (num>0){
        num/=10;
        count+=1;
    }
    num = n;
    while (num>0){
        int rem = num%10;
        num/=10;
        ans+=pow(rem, count);
    }
    if (ans==n){
        cout<<"Armstrong no";
    }else{
        cout<<"Nota Armstrong no";
    }
}

int getPowerOfDigit(){
        return 0;
}