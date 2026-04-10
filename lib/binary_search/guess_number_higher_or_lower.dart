// https://leetcode.com/problems/guess-number-higher-or-lower/
class GuessNumberHigherOrLower {
  final int input;
  final int guess;

  GuessNumberHigherOrLower(this.input, this.guess);

  int guessNumber() {
    var left = 1;
    var right = input;

    while (left < right) {
      var middle = left + (right - left) ~/ 2;
      var guessResult = _guess(middle);

      if (guessResult == -1) {
        right = middle;
      } else if (guessResult == 1) {
        left = middle + 1;
      } else {
        left = middle;

        break;
      }
    }

    return left;
  }

  int _guess(int number) => guess.compareTo(number);
}
