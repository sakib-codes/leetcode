void main() {
  int num = 16;
  Solution S = Solution();
  bool ans = S.isPerfectSquare(num);
  if (ans)
    print("true");
  else
    print("false");
}

class Solution {
  bool isPerfectSquare(int num) {
    // for (int i = 0; i <= (num / 2).toInt(); i++) {
    //   if (i * i == num) {
    //     return true;
    //   }
    // }

    bool ans = BinarySearch(num);
    if (ans) return true;
    return false;
  }
}

bool BinarySearch(int num) {
  int left = 0, right = num, mid = 0;
  while (left <= right) {
    mid = left + (right - left) ~/ 2;
    if (mid * mid == num) return true;
    if (mid * mid > num)
      right = mid - 1;
    else if (mid * mid < num)
      left = mid + 1;
  }
  return false;
}
