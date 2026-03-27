import 'package:leetcode_dart/queue/number_of_recent_calls.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final recentCounter = RecentCounter();

      test(
        'Example 1',
        () => expect(
          1,
          recentCounter.ping(1),
        ),
      );

      test(
        'Example 2',
        () => expect(
          2,
          recentCounter.ping(100),
        ),
      );

      test(
        'Example 3',
        () => expect(
          3,
          recentCounter.ping(3001),
        ),
      );

      test(
        'Example 4',
        () => expect(
          3,
          recentCounter.ping(3002),
        ),
      );
    },
  );
}
