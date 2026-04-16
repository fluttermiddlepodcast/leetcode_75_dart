// https://leetcode.com/problems/letter-combinations-of-a-phone-number/
class LetterCombinationsOfAPhoneNumber {
  static const _phoneMap = {
    '2': 'abc',
    '3': 'def',
    '4': 'ghi',
    '5': 'jkl',
    '6': 'mno',
    '7': 'pqrs',
    '8': 'tuv',
    '9': 'wxyz',
  };

  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) {
      return [];
    }

    final combinations = <String>[];
    final current = <String>[];

    void backtrack(int index) {
      if (index == digits.length) {
        combinations.add(current.join());
      } else {
        final digit = digits[index];
        final letters = _phoneMap[digit]!;

        for (var i = 0; i < letters.length; i++) {
          current.add(letters[i]);
          backtrack(index + 1);
          current.removeLast();
        }
      }
    }

    backtrack(0);

    return combinations;
  }
}
