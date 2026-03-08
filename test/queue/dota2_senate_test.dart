import 'package:leetcode_dart/queue/dota2_senate.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = Dota2Senate();

      test(
        'Radiant',
        () => expect(
          'Radiant',
          solution.predictPartyVictory('RD'),
        ),
      );

      test(
        'Dire',
        () => expect(
          'Dire',
          solution.predictPartyVictory('RDD'),
        ),
      );
    },
  );
}
