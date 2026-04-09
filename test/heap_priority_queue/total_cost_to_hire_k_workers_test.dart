import 'package:leetcode_dart/heap_priority_queue/total_cost_to_hire_k_workers.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = TotalCostToHireKWorkers();

      test(
        'Example 1',
        () => expect(
          11,
          solution.totalCost(
            [17, 12, 10, 2, 7, 2, 11, 20, 8],
            3,
            4,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          4,
          solution.totalCost(
            [1, 2, 4, 1],
            3,
            3,
          ),
        ),
      );
    },
  );
}
