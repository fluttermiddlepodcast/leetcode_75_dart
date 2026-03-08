// https://leetcode.com/problems/removing-stars-from-a-string/
class RemovingStarsFromAString {
  String removeStars(String s) {
    final stack = <String>[];

    for (var i = 0; i < s.length; i++) {
      final ch = s[i];
      if (ch == '*') {
        if (stack.isNotEmpty) {
          stack.removeLast();
        }
      } else {
        stack.add(ch);
      }
    }

    return stack.join('');
  }
}
