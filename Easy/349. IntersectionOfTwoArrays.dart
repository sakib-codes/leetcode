void main() {
  List<int> nums1 = [1, 5, 3, 7, 8, 9, 2];
  List<int> nums2 = [2, 6];
  Solution S = Solution();
  List<int> Result = S.intersection(nums1, nums2);
  print(Result);
}

class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> Result = [];
    List<int> Num1 = nums1.toSet().toList();
    List<int> Num2 = nums2.toSet().toList();
    nums2.toSet().toList();
    for (int nums in Num2) {
      if (Num1.contains(nums)) {
        Result.add(nums);
      }
    }
    return Result;
  }
}
