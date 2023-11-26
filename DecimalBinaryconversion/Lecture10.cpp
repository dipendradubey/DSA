#include<iostream>
#include<math.h>
using namespace std;
void decimalToBinary();
void binaryToDecimal();
void decimalToOcta();
void octaToDecimal();
void reverseNum();

int main(){
    //decimalToBinary();
    //reverseNum();
    //binaryToDecimal();
    //decimalToOcta();
    //octaToDecimal();
    reverseNum();
    return 0;
}

void decimalToBinary(){
    int num = 2;
    int decimalNum = 0;
    int multiply = 1;
    while(num>0){
        int rem = num%2;
        num = num/2;
        decimalNum = multiply*rem+decimalNum;
        multiply*=10;
    }
    cout<<decimalNum;
}

void binaryToDecimal(){
    int binaryNo = 10;
    int multiply = 1;
    int ans = 0;
    while(binaryNo > 0){
        int rem = binaryNo%10;
        binaryNo = binaryNo/10;
        ans = rem*multiply + ans;
        multiply *= 2;
    }
    cout<<"converted decimal is:"<<ans;
}

void decimalToOcta()
{
    int num = 30;
    int ans = 0;
    int multiply = 1;
    while (num){
        int rem = num%8;
        num /= 8;
        ans = multiply*rem + ans;
        multiply *= 10;
    }
    cout<<endl<<"decimal to octa result is: " <<ans;
}

void octaToDecimal()
{
    int num = 36;
    int ans = 0;
    int multiply = 1;
    while (num){
        int rem = num%10;
        num /= 10;
        ans = multiply*rem + ans;
        multiply *= 8;
    }
    cout<<endl<<"octa to decimal result is: " <<ans;
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