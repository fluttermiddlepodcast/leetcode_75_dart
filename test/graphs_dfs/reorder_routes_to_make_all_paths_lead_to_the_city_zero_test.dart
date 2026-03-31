import 'package:leetcode_dart/graphs_dfs/reorder_routes_to_make_all_paths_lead_to_the_city_zero.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ReorderRoutesToMakeAllPathsLeadToTheCityZero();

      test(
        'Example 1',
        () => expect(
          3,
          solution.minReorder(
            6,
            [
              [0, 1],
              [1, 3],
              [2, 3],
              [4, 0],
              [4, 5],
            ],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          2,
          solution.minReorder(
            5,
            [
              [1, 0],
              [1, 2],
              [3, 2],
              [3, 4],
            ],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          0,
          solution.minReorder(
            3,
            [
              [1, 0],
              [2, 0],
            ],
          ),
        ),
      );
    },
  );
}
