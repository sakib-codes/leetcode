class Solution {
  bool checkDivisibility(int n) {
    bool res = false;
    int sum = 0;
    int mul = 1;
    int divisor = 10, divident = n;
    while (divident / divisor != 0) {
      sum += divident % divisor;
      mul = mul * (divident % divisor);
      divident = (divident / divisor).toInt();
    }
    if (n % (sum + mul) == 0) {
      res = true;
    }
    return res;
  }
}

void main() {
  int n = 243;
  Solution s = Solution();
  bool res = s.checkDivisibility(n);
  if (res == true) {
    print(true);
  } else {
    print(false);
  }
}
