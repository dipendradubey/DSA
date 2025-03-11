#include<iostream>
using namespace std;
int main(int argc, char const *argv[])
{
  int num;
  cin>>num;
  cout<<"print prime no from 2 to "<<num<<endl; 
  if (num<2){
    cout<<"Since no is less than 2 hence no prime no exist";
    return 0;
  }

  for (int i=2; i<=num; i++)
  {
    bool primeNoFound = true;
    //Check if number is devided from 2 to n-1
      for (int j=2; j<i; j++){
        if (i%j==0){
          primeNoFound = false;
          break;
          return 0;
        }
      }
      if (primeNoFound)
      cout<<i<<" ";
  }
  return 0;
}
