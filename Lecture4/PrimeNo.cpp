#include<iostream>
using namespace std;
int main(int argc, char const *argv[])
{
  int num;
  cin>>num;
  cout<<"print prime no from 2 to "<<num<<endl; 
  for (int i=2; i<=num; i++)
  {
      int j = 2;
      while (j<i/2)
      {
        if (i%j==0)
        {
          break;
        }
        j++;
      }
      if (j>i/2)
      cout<<i<<endl;
  }
  return 0;
}
