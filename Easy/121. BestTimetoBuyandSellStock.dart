class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = 1 << 30; // effectively infinity
    int maxProfit = 0;

    for (int price in prices) {
      // Track the lowest price seen so far
      if (price < minPrice) {
        minPrice = price;
      }
      // Calculate profit if selling today
      int profit = price - minPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.maxProfit([7,1,5,3,6,4]));
  print(sol.maxProfit([7,6,4,3,1]));   
}
