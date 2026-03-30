import 'package:leetcode_dart/graphs_dfs/number_of_provinces.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = NumberOfProvinces();

      test(
        'Example 1',
        () => expect(
          2,
          solution.findCircleNum(
            [
              [1, 1, 0],
              [1, 1, 0],
              [0, 0, 1],
            ],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          3,
          solution.findCircleNum(
            [
              [1, 0, 0],
              [0, 1, 0],
              [0, 0, 1],
            ],
          ),
        ),
      );
    },
  );
}
