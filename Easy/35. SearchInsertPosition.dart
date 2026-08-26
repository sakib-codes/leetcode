class Solution {
  int result = 0;
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > target) {
        result = i;
        break;
      }
      if (nums[i] == target) {
        result = i;
        break;
      }
      if (i == nums.length - 1) {
        result = i + 1;
        break;
      }
      if (nums[i] < target) {
        continue;
      }
    }

    return result;
  }
}

void main() {
  List<int> nums = [6, 1, 5, 6];
  int target = 6;
  Solution s = Solution();
  int answer = s.searchInsert(nums, target);
  print(answer);
}
