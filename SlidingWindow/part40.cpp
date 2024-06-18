#include<iostream>
#include <vector>  // Include vector header
#include <algorithm>  // Include algorithm header for max function
using namespace std;
int lengthOfLongestString(string s);
int main(){
    int ans = lengthOfLongestString("abcabcbb");
    cout<<"hello "<<ans<<endl;
    return 0;
}

int lengthOfLongestString(string S){
    vector<bool>count(256,0);
    int first = 0, second = 0, len = 0;
    while (second<S.size()){
        while (count[S[second]]){
            cout <<S[second]<<" "<<count[S[second]]<<endl;
            count[S[first]] = 0;
            first++;
        }

        cout <<"end here"<<endl;
        count[S[second]] = 1;
        len = max(len, second-first+1);
        second += 1;
    }
    
    return len;
}