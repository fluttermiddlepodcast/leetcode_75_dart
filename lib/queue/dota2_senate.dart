// https://leetcode.com/problems/dota2-senate/
class Dota2Senate {
  String predictPartyVictory(String senate) {
    final radiant = <int>[];
    final dire = <int>[];
    final n = senate.length;

    for (var i = 0; i < n; i++) {
      if (senate[i] == 'R') {
        radiant.add(i);
      } else {
        dire.add(i);
      }
    }

    var rI = 0;
    var dI = 0;

    while (rI < radiant.length && dI < dire.length) {
      if (radiant[rI] < dire[dI]) {
        dI++;

        radiant.add(radiant[rI++] + n);
      } else {
        rI++;

        dire.add(dire[dI++] + n);
      }
    }

    return rI < radiant.length ? "Radiant" : "Dire";
  }
}
