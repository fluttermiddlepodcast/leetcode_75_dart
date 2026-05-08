import 'package:leetcode_dart/trie/search_suggestions_system.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = SearchSuggestionsSystem();

      test(
        'Example 1',
        () => expect(
          [
            [
              'mobile',
              'moneypot',
              'monitor',
            ],
            [
              'mobile',
              'moneypot',
              'monitor',
            ],
            [
              'mouse',
              'mousepad',
            ],
            [
              'mouse',
              'mousepad',
            ],
            [
              'mouse',
              'mousepad',
            ],
          ],
          equals(
            solution.suggestedProducts(
              [
                'mobile',
                'mouse',
                'moneypot',
                'monitor',
                'mousepad',
              ],
              'mouse',
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          [
            ["havana"],
            ["havana"],
            ["havana"],
            ["havana"],
            ["havana"],
            ["havana"],
          ],
          equals(
            solution.suggestedProducts(
              ["havana"],
              "havana",
            ),
          ),
        ),
      );
    },
  );
}
