class MinimumFlipsToMakeAORBEqualToC {
  int minFlips(int a, int b, int c) {
    var flips = 0;
    for (var i = 0; i < 32; i++) {
      final bitA = (a >> i) & 1;
      final bitB = (b >> i) & 1;
      final bitC = (c >> i) & 1;

      if (bitC == 0) {
        flips += bitA + bitB;
      } else if (bitA == 0 && bitB == 0) {
        flips += 1;
      }
    }

    return flips;
  }
}
