class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> res = [];
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          res.add(i);
          res.add(j);
        }
      }
    }
    List<int> fn = res.toSet().toList();
    return fn;
  }
}

void main() {
  List<int> nums = [-1, -2, -3, -4, -5];
  int target = -8;
  Solution S = Solution();
  List<int> result = S.twoSum(nums, target);
  print(result);
}
