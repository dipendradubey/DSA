#include<iostream>
#include<math.h>
using namespace std;
void decimalToBinary();
int main(){
    decimalToBinary();
    reverseNum();
    return 0;
}

void decimalToBinary(){
    int num = 2;
    int decimalNum = 0;
    int power = 0;
    while(num>0){
        int rem = num%2;
        num = num/2;
        decimalNum = pow(10, power)*rem+decimalNum;
        power++;
    }
    cout<<decimalNum;
}

void reverseNum(){
    int n = 123;
    int ans = 0;
    int power = 0;
    while(n > 0){
        int rem = n%10; //3 2
        n = n/10; //12 1
        ans = rem*pow(10, power) + ans; //3
        power++;
    }
}