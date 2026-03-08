// https://leetcode.com/problems/asteroid-collision/
class AsteroidCollision {
  List<int> asteroidCollision(List<int> asteroids) {
    final stack = <int>[];

    for (final ast in asteroids) {
      var destroyed = false;

      while (!destroyed && stack.isNotEmpty && ast < 0 && stack.last > 0) {
        var peek = stack.last;
        if (peek < -ast) {
          stack.removeLast();
        } else if (peek == -ast) {
          stack.removeLast();

          destroyed = true;
        } else {
          destroyed = true;
        }
      }

      if (!destroyed) {
        stack.add(ast);
      }
    }

    return stack;
  }
}
