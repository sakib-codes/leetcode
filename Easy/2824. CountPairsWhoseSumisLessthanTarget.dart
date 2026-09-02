void main() {
  List<int> nums = [-1, 1, 2, 3, 1];
  int target = 2;
  Solution S = Solution();
  int ans = S.countPairs(nums, target);
  print(ans);
}

class Solution {
  int countPairs(List<int> nums, int target) {
    int count = 0;
    int n = nums.length;

    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        if (nums[i] + nums[j] < target) {
          count++;
        }
      }
    }

    return count;
  }
}
