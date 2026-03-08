// https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
class KidsWithTheGreatestNumberOfCandies {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    final maxCandies = candies.reduce((a, b) => a > b ? a : b);

    return candies.map((candy) => (candy + extraCandies) >= maxCandies).toList();
  }
}
