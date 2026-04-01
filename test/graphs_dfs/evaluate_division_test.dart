import 'package:leetcode_dart/graphs_dfs/evaluate_division.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = EvaluateDivision();

      test(
        'Example 1',
        () => expect(
          [
            6.00000,
            0.50000,
            -1.00000,
            1.00000,
            -1.00000,
          ],
          equals(
            solution.calcEquation(
              [
                ["a", "b"],
                ["b", "c"],
              ],
              [
                2.0,
                3.0,
              ],
              [
                ["a", "c"],
                ["b", "a"],
                ["a", "e"],
                ["a", "a"],
                ["x", "x"],
              ],
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          [
            3.75000,
            0.40000,
            5.00000,
            0.20000,
          ],
          equals(
            solution.calcEquation(
              [
                ["a", "b"],
                ["b", "c"],
                ["bc", "cd"],
              ],
              [
                1.5,
                2.5,
                5.0,
              ],
              [
                ["a", "c"],
                ["c", "b"],
                ["bc", "cd"],
                ["cd", "bc"],
              ],
            ),
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          [
            0.50000,
            2.00000,
            -1.00000,
            -1.00000,
          ],
          equals(
            solution.calcEquation(
              [
                ["a", "b"],
              ],
              [0.5],
              [
                ["a", "b"],
                ["b", "a"],
                ["a", "c"],
                ["x", "y"],
              ],
            ),
          ),
        ),
      );
    },
  );
}
