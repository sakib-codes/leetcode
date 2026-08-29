void main() {
  List<int> nums = [3, 0, 1];
  Solution S = Solution();
  int answer = S.missingNumber(nums);
  print(answer);
}

class Solution {
  int missingNumber(List<int> nums) {
    int ActualSum = 0;
    int ExpectedSum = 0;
    for (int Num in nums) {
      //O(1) Most efficinet or Optimal Solution for this
      ActualSum += Num;
    }
    ExpectedSum = nums.length * (nums.length + 1) ~/ 2;
    return (ExpectedSum - ActualSum);
  }
}

// class Solution {
//   int missingNumber(List<int> nums) {
//     nums.sort();
//     int low = 0;
//     int high = nums.length - 1;
//     int mid = 0;
//     while (low <= high) {                        //Binary Serach method
//       mid = (low + high) ~/ 2;
//       if (nums[mid] == mid) {
//         low = mid + 1;
//       } else if (nums[mid] > mid) {
//         high = mid - 1;
//       }
//     }
//     return low;
//   }
// }
