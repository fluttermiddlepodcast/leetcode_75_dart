// https://leetcode.com/problems/determine-if-two-strings-are-close/
class DetermineIfTwoStringsAreClose {
  bool closeStrings(String word1, String word2) {
    if (word1.length != word2.length) {
      return false;
    }

    final freq1 = List.filled(26, 0);
    final freq2 = List.filled(26, 0);

    for (var code in word1.codeUnits) {
      freq1[code - 97]++;
    }

    for (var code in word2.codeUnits) {
      freq2[code - 97]++;
    }

    for (var i = 0; i < 26; i++) {
      if ((freq1[i] == 0) != (freq2[i] == 0)) {
        return false;
      }
    }

    freq1.sort();
    freq2.sort();
    for (var i = 0; i < 26; i++) {
      if (freq1[i] != freq2[i]) {
        return false;
      }
    }

    return true;
  }
}
