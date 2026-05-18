import 'package:leetcode_dart/monotonic_stack/online_stock_span.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final stockSpanner = StockSpanner();

      test(
        'Example 1',
        () {
          expect(1, stockSpanner.next(100));
          expect(1, stockSpanner.next(80));
          expect(1, stockSpanner.next(60));
          expect(2, stockSpanner.next(70));
          expect(1, stockSpanner.next(60));
          expect(4, stockSpanner.next(75));
          expect(6, stockSpanner.next(85));
        },
      );
    },
  );
}
