import 'dart:collection';

void main() {
  List<int> arr = [10, 2, 5, 3];
  Solution S = Solution();
  if (S.checkIfExist(arr))
    print('true');
  else
    print('false');
}

class Solution {
  bool checkIfExist(List<int> arr) {
    arr.sort();
    for (int j = 0; j < arr.length; j++) {
      int res = BinarySearch(arr, arr[j] * 2);
      if (res != -1 && res != j) return true;
      if (arr[j] % 2 == 0) {
        res = BinarySearch(arr, arr[j] ~/ 2);
        if (res != -1 && res != j) return true;
      }
    }
    return false;
  }
}

int BinarySearch(List<int> arr, int item) {
  int low = 0, high = arr.length, mid = 0;
  while (low <= high) {
    mid = low + (high - low) ~/ 2;
    if (arr[mid] == item)
      return mid;
    else if (arr[mid] < item) {
      low = mid + 1;
    } else
      high = mid - 1;
  }
  return -1;
}
