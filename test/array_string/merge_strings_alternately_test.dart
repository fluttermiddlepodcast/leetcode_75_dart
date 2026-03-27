import 'package:leetcode_dart/array_string/merge_strings_alternately.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MergeStringsAlternately();

      test(
        'Example 1',
        () => expect(
          'apbqcr',
          solution.mergeAlternately(
            'abc',
            'pqr',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          'apbqrs',
          solution.mergeAlternately(
            'ab',
            'pqrs',
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          'apbqcd',
          solution.mergeAlternately(
            'abcd',
            'pq',
          ),
        ),
      );
    },
  );
}
