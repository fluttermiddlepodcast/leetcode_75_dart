import 'package:leetcode_dart/array_string/string_compression.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = StringCompression();

      test(
        '6',
        () {
          final input = ["a", "a", "b", "b", "c", "c", "c"];

          expect(
            6,
            solution.compress(input),
          );

          expect(
            ["a", "2", "b", "2", "c", "3"],
            equals(input.take(6)),
          );
        },
      );

      test(
        '1',
        () {
          final input = ["a"];

          expect(
            1,
            solution.compress(input),
          );

          expect(
            ["a"],
            equals(input),
          );
        },
      );

      test(
        '4',
        () {
          final input = ["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"];

          expect(
            4,
            solution.compress(input),
          );

          expect(
            ["a", "b", "1", "2"],
            equals(input.take(4)),
          );
        },
      );
    },
  );
}
