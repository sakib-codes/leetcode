void main() {
  List<int> nums = [6, 1, 5, 6];
  int target = 6;
  Solution s = Solution();
  int answer = s.removeElement(nums, target);
  print(answer);
}

class Solution {
  int removeElement(List<int> nums, int val) {
    while (nums.contains(val)) {
      nums.remove(val);
    }
    return nums.length;
  }
}
