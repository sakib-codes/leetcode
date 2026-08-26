void main() {
  String base = "adbutsad";
  String needle = "sad";
  Solution s = Solution();
  int answer = s.strStr(base, needle);
  print(answer);
}

class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}
