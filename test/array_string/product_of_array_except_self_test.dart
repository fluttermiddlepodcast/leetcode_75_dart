import 'package:leetcode_dart/array_string/product_of_array_except_self.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ProductOfArrayExceptSelf();

      test(
        '24, 12, 8, 6',
        () => expect(
          [24, 12, 8, 6],
          equals(
            solution.productExceptSelf(
              [1, 2, 3, 4],
            ),
          ),
        ),
      );

      test(
        '0, 0, 9, 0, 0',
        () => expect(
          [0, 0, 9, 0, 0],
          equals(
            solution.productExceptSelf(
              [-1, 1, 0, -3, 3],
            ),
          ),
        ),
      );
    },
  );
}
