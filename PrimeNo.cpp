#include<iostream>
using namespace std;
int main(int argc, char const *argv[])
{
   //cout<<"print prime no from 2 to 20";
   int num = 20; 
   for (int i=2; i<=num; i++)
   {
        for (int j=2; j<i/2; j++)
        {
          if (j>=i-1)
          {
            cout<<i<<endl;
            break;
          }
          else if (i%j==0)
          {
            break;
          } 
        }
   }
   return 0;
}
