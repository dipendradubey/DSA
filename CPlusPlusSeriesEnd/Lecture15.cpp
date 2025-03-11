#include<iostream>
using namespace std;
void convertSmallToCapital(char c);
void armStrongNo();
void trailingZeroInFact();
int main(){
    //convertSmallToCapital('p');
    //armStrongNo();
    trailingZeroInFact();
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

void trailingZeroInFact(){
    int num = 2;
    int ans = 1;
    for (int n = 1; n<=num; n++)
    ans*=n;

    cout<<"Factorial value is "<<ans<<endl;

    int count = 0;
    while (ans%10==0){
        ans/=10;
        count++;
    }
    cout<<count;
}