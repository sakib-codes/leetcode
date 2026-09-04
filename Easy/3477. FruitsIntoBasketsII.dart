void main() {
  List<int> fruits = [8, 5], baskets = [1, 8];
  Solution S = Solution();
  int ans = S.numOfUnplacedFruits(fruits, baskets);
  print(ans);
}

class Solution {
  int numOfUnplacedFruits(List<int> fruits, List<int> baskets) {
    int CountUnPlaced = 0;
    List<int> MarkBasket = List.castFrom(baskets);
    for (int i = 0; i < fruits.length; i++) {
      for (int j = 0; j < MarkBasket.length; j++) {
        if (fruits[i] <= MarkBasket[j]) {
          MarkBasket[j] = -1;
          break;
        }
      }
    }

    for (int i = 0; i < MarkBasket.length; i++) {
      if (MarkBasket[i] != -1) {
        CountUnPlaced++;
      }
    }
    return CountUnPlaced;
  }
}
