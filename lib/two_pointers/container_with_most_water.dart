import 'dart:math';

class ContainerWithMostWater {
  int maxArea(List<int> height) {
    var maxWater = 0;
    var left = 0;
    var right = height.length - 1;

    while (left < right) {
      var heightLeft = height[left];
      var heightRight = height[right];
      var currentHeight = min(heightLeft, heightRight);
      var currentWidth = right - left;
      var currentArea = currentHeight * currentWidth;

      if (currentArea > maxWater) {
        maxWater = currentArea;
      }

      if (heightLeft < heightRight) {
        left++;
      } else {
        right--;
      }
    }

    return maxWater;
  }
}
