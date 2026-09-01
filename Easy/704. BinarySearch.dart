void main() {
  List<int> nums = [-1, 3, 5, 7, 8];
  int target = -1;
  Solution S = Solution();
  int ans = S.search(nums, target);
  if (ans != -1)
    print(ans);
  else
    print(-1);
}

class Solution {
  int search(List<int> nums, int target) {
    nums.sort();
    int left = 0, right = nums.length - 1, mid = 0;
    while (left <= right) {
      mid = left + (right - left) ~/ 2;
      if (nums[mid] == target)
        return mid;
      else if (nums[mid] < target) {
        left = mid + 1;
      } else
        right = mid - 1;
    }
    return -1;
  }
}
