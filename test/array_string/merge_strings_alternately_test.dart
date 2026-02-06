import 'package:leetcode_dart/array_string/merge_strings_alternately.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MergeStringsAlternately();

      test(
        'apbqcr',
        () => expect(
          'apbqcr',
          solution.mergeAlternately(
            'abc',
            'pqr',
          ),
        ),
      );

      test(
        'apbqrs',
        () => expect(
          'apbqrs',
          solution.mergeAlternately(
            'ab',
            'pqrs',
          ),
        ),
      );

      test(
        'apbqcd',
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
