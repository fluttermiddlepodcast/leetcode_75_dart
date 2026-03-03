class FindTheDifferenceOfTwoArrays {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    final nums1Set = nums1.toSet();
    final nums2Set = nums2.toSet();

    final uniqIn1 = <int>[];
    final uniqIn2 = <int>[];

    for (final num in nums1Set) {
      if (!nums2Set.contains(num)) {
        uniqIn1.add(num);
      }
    }

    for (final num in nums2Set) {
      if (!nums1Set.contains(num)) {
        uniqIn2.add(num);
      }
    }

    return [uniqIn1, uniqIn2];
  }
}
