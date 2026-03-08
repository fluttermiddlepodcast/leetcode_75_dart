// https://leetcode.com/problems/reverse-vowels-of-a-string/
class ReverseVowelsOfAString {
  static const _vowels = {'a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U'};

  String reverseVowels(String s) {
    final letters = s.split('');
    var left = 0;
    var right = letters.length - 1;

    while (left < right) {
      while (left < right && !_vowels.contains(letters[left])) {
        left++;
      }

      while (left < right && !_vowels.contains(letters[right])) {
        right--;
      }

      if (left < right) {
        final temp = letters[left];
        letters[left] = letters[right];
        letters[right] = temp;

        left++;
        right--;
      }
    }

    return letters.join();
  }
}
