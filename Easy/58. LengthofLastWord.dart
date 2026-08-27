class Solution {
  int lengthOfLastWord(String sa) {
    String s = sa.trim();
    int ans = 0;
    List<String> temp = [];
    if (!s.contains(' ')) {
      return s.length;
    }
    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] == ' ') {
        ans = temp.length;
        break;
      }
      temp.add(s[i]);
    }
    return ans;
  }
}

void main() {
  String s = "aa";
  Solution S = Solution();
  int answer = S.lengthOfLastWord(s);
  print(answer);
}
