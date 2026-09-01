class Solution {
  int findTheDistanceValue(List<int> arr1, List<int> arr2, int d) {
    List<int> newArr2 = arr2.toList();
    newArr2.sort();
    int count = 0;
    for (int num in arr1) {
      int ans = BinarySearch(newArr2, num);
      if (ans >= 0) continue;
      int idx = -(ans) - 1;
      bool isFar = true;

      if (idx < newArr2.length) {
        if ((num - newArr2[idx]).abs() <= d) {
          isFar = false;
        }
      }
      if (isFar && idx - 1 >= 0) {
        if ((num - newArr2[idx - 1]).abs() <= d) {
          isFar = false;
        }
      }
      if (isFar) {
        count++;
      }
    }

    return count;
  }
}

int BinarySearch(List<int> newArr2, int element) {
  int left = 0, right = newArr2.length - 1, mid = 0;
  while (left <= right) {
    mid = left + (right - left) ~/ 2;
    if (newArr2[mid] == element)
      return mid;
    else if (newArr2[mid] < element)
      left = mid + 1;
    else
      right = mid - 1;
  }
  return -(left) - 1;
}

void main() {
  List<int> arr1 = [4, 5, 8], arr2 = [10, 9, 1, 8];
  int d = 2;
  Solution S = Solution();
  int ans = S.findTheDistanceValue(arr1, arr2, d);
  print(ans);
}
