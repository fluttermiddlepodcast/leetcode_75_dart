import 'package:leetcode_dart/hash_map_set/determine_if_two_strings_are_close.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = DetermineIfTwoStringsAreClose();

      test(
        'true',
        () => expect(
          true,
          solution.closeStrings(
            'abc',
            'bca',
          ),
        ),
      );

      test(
        'false',
        () => expect(
          false,
          solution.closeStrings(
            'a',
            'aa',
          ),
        ),
      );

      test(
        'true',
        () => expect(
          true,
          solution.closeStrings(
            'cabbba',
            'abbccc',
          ),
        ),
      );
    },
  );
}
