class Solution {
  int mySqrt(int x) {
    int ans = 0;
    if (x == 1) {
      return 1;
    }
    int low = 0, high = x;
    while (low <= high) {
      int mid = ((low + high) ~/ 2);
      int square = mid * mid;
      if (square == x) {
        return mid;
      } else if (square < x) {
        ans = mid;
        low = mid + 1;
      } else if (square > x) {
        high = mid - 1;
      }
    }
    return ans;
  }
}

void main() {
  int s = 1510227509;
  Solution S = Solution();
  int answer = S.mySqrt(s);
  print(answer);
}
