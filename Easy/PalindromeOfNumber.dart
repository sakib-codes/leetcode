void main() {
  int x = -121;

  Solution s = Solution();
  bool res = s.isPalindrome(x);
  print(res);
}

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    List<int> Digits = [];
    List<int> ExtractDigitsToList(int x) {
      List<int> digits = [];
      int divisor = x;
      while (divisor / 10 != 0) {
        digits.add(divisor % 10);
        divisor = (divisor / 10).toInt();
      }
      return digits;
    }

    Digits = ExtractDigitsToList(x);
    //print(Digits);
    for (
      int i = 0, j = Digits.length - 1;
      i < (Digits.length / 2).toInt();
      i++, j--
    ) {
      if (Digits[i] != Digits[j]) {
        return false;
      }
    }
    return true;
  }
}
