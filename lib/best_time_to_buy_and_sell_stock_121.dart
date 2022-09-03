class BestTimeToBuyAndSellStock121 {
  int maxProfit(List<int> prices) {
    var max = 0;
    var min = 0;
    for (var i = 0; i < prices.length; i++) {
      if (prices[i] < prices[min]) {
        min = i;
      }
      if (prices[i] - prices[min] > max) {
        max = prices[i] - prices[min];
      }
    }
    return max;
  }
}