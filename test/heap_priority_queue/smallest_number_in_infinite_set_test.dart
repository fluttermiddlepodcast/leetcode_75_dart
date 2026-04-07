import 'package:leetcode_dart/heap_priority_queue/smallest_number_in_infinite_set.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      test(
        'Example 1',
        () {
          final smallestInfiniteSet = SmallestInfiniteSet();

          smallestInfiniteSet.addBack(2);

          expect(1, smallestInfiniteSet.popSmallest());
          expect(2, smallestInfiniteSet.popSmallest());
          expect(3, smallestInfiniteSet.popSmallest());

          smallestInfiniteSet.addBack(1);

          expect(1, smallestInfiniteSet.popSmallest());
          expect(4, smallestInfiniteSet.popSmallest());
          expect(5, smallestInfiniteSet.popSmallest());
        },
      );
    },
  );
}
