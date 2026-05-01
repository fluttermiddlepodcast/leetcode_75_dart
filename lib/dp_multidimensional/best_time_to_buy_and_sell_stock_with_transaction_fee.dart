import 'dart:math';

// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/
class BestTimeToBuyAndSellStockWithTransactionFee {
  int maxProfit(List<int> prices, int fee) {
    if (prices.isEmpty) {
      return 0;
    }

    var cash = 0;
    var hold = -prices[0];

    for (var i = 1; i < prices.length; i++) {
      cash = max(cash, hold + prices[i] - fee);
      hold = max(hold, cash - prices[i]);
    }

    return cash;
  }
}
