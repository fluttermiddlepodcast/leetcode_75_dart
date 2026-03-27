import 'package:leetcode_dart/queue/dota2_senate.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = Dota2Senate();

      test(
        'Example 1',
        () => expect(
          'Radiant',
          solution.predictPartyVictory('RD'),
        ),
      );

      test(
        'Example 2',
        () => expect(
          'Dire',
          solution.predictPartyVictory('RDD'),
        ),
      );
    },
  );
}
