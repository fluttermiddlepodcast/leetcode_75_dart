// https://leetcode.com/problems/reverse-words-in-a-string/
class ReverseWordsInAString {
  String reverseWords(String s) {
    final words = [];
    var i = 0;
    var n = s.length;

    while (i < n) {
      while (i < n && s[i] == ' ') {
        i++;
      }

      if (i >= n) {
        break;
      }

      var start = i;
      while (i < n && s[i] != ' ') {
        i++;
      }

      words.add(s.substring(start, i));
    }

    var left = 0;
    var right = words.length - 1;

    while (left < right) {
      final temp = words[left];
      words[left] = words[right];
      words[right] = temp;
      left++;
      right--;
    }

    final result = StringBuffer();
    for (var i = 0; i < words.length; i++) {
      if (i > 0) result.write(' ');
      result.write(words[i]);
    }

    return result.toString();
  }
}
