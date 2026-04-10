import 'package:leetcode_dart/binary_search/guess_number_higher_or_lower.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      test(
        'Example 1',
        () => expect(
          6,
          GuessNumberHigherOrLower(10, 6).guessNumber(),
        ),
      );

      test(
        'Example 2',
        () => expect(
          1,
          GuessNumberHigherOrLower(1, 1).guessNumber(),
        ),
      );

      test(
        'Example 3',
        () => expect(
          1,
          GuessNumberHigherOrLower(2, 1).guessNumber(),
        ),
      );
    },
  );
}
