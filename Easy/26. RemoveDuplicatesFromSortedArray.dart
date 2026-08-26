class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;
    int k = 0;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[k]) {
        k++;
        nums[k] = nums[i];
      }
    }
    return k + 1;
  }
}

void main() {
  List<int> nums = [1, 2, 3, 3, 4, 5, 5, 5, 7];
  Solution s = Solution();
  int answer = s.removeDuplicates(nums);
  print(answer);
}
