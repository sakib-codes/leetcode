class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int i = m - 1;      // Pointer for nums1's elements
    int j = n - 1;      // Pointer for nums2's elements
    int k = m + n - 1;  // Pointer for the end of nums1

    // Merge backwards from the end
    while (j >= 0) {
      if (i >= 0 && nums1[i] > nums2[j]) {
        nums1[k] = nums1[i];
        i--;
      } else {
        nums1[k] = nums2[j];
        j--;
      }
      k--;
    }
  }
}

void main() {
  final solution = Solution();

  // Example 1
  var nums1 = [1, 2, 3, 0, 0, 0];
  var nums2 = [2, 5, 6];
  solution.merge(nums1, 3, nums2, 3);
  print('Example 1: $nums1'); // Expected: [1, 2, 2, 3, 5, 6]

  // Example 2
  nums1 = [1];
  nums2 = [];
  solution.merge(nums1, 1, nums2, 0);
  print('Example 2: $nums1'); // Expected: [1]

  // Example 3
  nums1 = [0];
  nums2 = [1];
  solution.merge(nums1, 0, nums2, 1);
  print('Example 3: $nums1'); // Expected: [1]
}