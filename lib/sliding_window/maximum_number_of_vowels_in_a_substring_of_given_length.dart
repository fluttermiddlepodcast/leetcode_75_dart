const _vowels = {'a', 'e', 'i', 'o', 'u'};

// https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/
class MaximumNumberOfVowelsInASubstringOfGivenLength {
  int maxVowels(String s, int k) {
    var maxCount = 0;
    var currCount = 0;

    for (var i = 0; i < k; i++) {
      if (_vowels.contains(s[i])) {
        currCount++;
      }
    }

    maxCount = currCount;

    for (var i = k; i < s.length; i++) {
      if (_vowels.contains(s[i - k])) {
        currCount--;
      }

      if (_vowels.contains(s[i])) {
        currCount++;
      }

      if (currCount > maxCount) {
        maxCount = currCount;
      }
    }

    return maxCount;
  }
}
