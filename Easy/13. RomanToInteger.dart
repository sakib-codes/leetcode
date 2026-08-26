void main() {
  String x = "MCMXCIV";
  Solution s = Solution();
  int res = s.romanToInt(x.toUpperCase());
  print(res);
}

class Solution {
  int romanToInt(String s) {
    int result = 0;
    Map<String, int> Table = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    for (int i = 0; i < s.length; i++) {
      //print(s[i]);
      if (i < s.length - 1 && Table[s[i]]!.toInt() < Table[s[i + 1]]!.toInt()) {
        result -= Table[s[i]]!;
        continue;
      } else {
        result += Table[s[i]]!;
      }
    }
    //print(result);
    return result;
  }
}
