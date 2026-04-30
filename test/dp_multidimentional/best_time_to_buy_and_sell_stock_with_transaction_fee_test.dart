import 'package:leetcode_dart/dp_multidimensional/best_time_to_buy_and_sell_stock_with_transaction_fee.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = BestTimeToBuyAndSellStockWithTransactionFee();

      test(
        'Example 1',
        () => expect(
          8,
          solution.maxProfit(
            [1, 3, 2, 8, 4, 9],
            2,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          6,
          solution.maxProfit(
            [1, 3, 7, 5, 10, 3],
            3,
          ),
        ),
      );
    },
  );
}
