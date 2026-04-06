import 'package:leetcode_dart/heap_priority_queue/kth_largest_element_in_an_array.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = KthLargestElementInAnArray();

      test(
        'Example 1',
        () => expect(
          5,
          solution.findKthLargest(
            [3, 2, 1, 5, 6, 4],
            2,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          4,
          solution.findKthLargest(
            [3, 2, 3, 1, 2, 4, 5, 5, 6],
            4,
          ),
        ),
      );
    },
  );
}
