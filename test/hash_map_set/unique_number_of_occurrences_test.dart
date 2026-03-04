import 'package:leetcode_dart/hash_map_set/unique_number_of_occurrences.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = UniqueNumberOfOccurrences();

      test(
        'true',
        () => expect(
          true,
          solution.uniqueOccurrences(
            [1, 2, 2, 1, 1, 3],
          ),
        ),
      );

      test(
        'false',
        () => expect(
          false,
          solution.uniqueOccurrences(
            [1, 2],
          ),
        ),
      );

      test(
        'true',
        () => expect(
          true,
          solution.uniqueOccurrences(
            [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0],
          ),
        ),
      );
    },
  );
}
