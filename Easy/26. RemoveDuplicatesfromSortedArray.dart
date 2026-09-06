void main() {
  List<int> nums = [1, 2, 2, 2, 5, 6, 7, 8, 8, 8];
  Solution S = Solution();
  int ans = S.removeDuplicates(nums);
  print(ans);
}

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int k = 1;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[k - 1]) {
        nums[k] = nums[i];
        k++;
      }
    }

    return k;
  }
}
