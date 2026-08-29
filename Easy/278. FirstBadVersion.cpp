
#include<iostream>
using namespace std;
void main() {
  Solution S = Solution();
  int answer = S.firstBadVersion(n);
}


// The API isBadVersion is defined for you.
// bool isBadVersion(int version);

class Solution {
public:
    int firstBadVersion(int n) {
      int low=1,high=n;
      while(low<=high){
        int mid= low+(high-low)/2;
        if(isBadVersion(mid)){
          high=mid;
        }
        else if(isBadVersion(mid)==false){
          low=mid+1;
        }
      }
      return low;
    }
}