class Solution {
  int missingMultiple(List<int> nums, int k) {
    List<int> multiples = [];
    int result = k;
    nums.sort();
    for (var num in nums) {
      if (num % k == 0) {
        multiples.add(num);
      }
    }
    //print(multiples);
    List<int> Multiples = multiples.toSet().toList();
    for (int i = 0; i < Multiples.length; i++) {
      if (Multiples[i] != k && Multiples.isNotEmpty) {
        result = k;
      }
      if (Multiples[i] != k * (i + 1)) {
        result = k * (i + 1);
        break;
      } else {
        result = k * (i + 2);
      }
    }
    //print(result);
    return result;
  }
}

void main() {
  var nums = [83, 96, 34, 56, 48, 30, 7, 14, 77, 66, 66, 66, 21, 17, 38, 7, 9];
  int k = 7;
  Solution s = Solution();
  int answer = s.missingMultiple(nums, k);
  print(answer);
}
