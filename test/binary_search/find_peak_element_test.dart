import 'package:leetcode_dart/binary_search/find_peak_element.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = FindPeakElement();

      test(
        'Example 1',
        () => expect(
          2,
          solution.findPeakElement(
            [1, 2, 3, 1],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          5,
          solution.findPeakElement(
            [1, 2, 1, 3, 5, 6, 4],
          ),
        ),
      );
    },
  );
}
