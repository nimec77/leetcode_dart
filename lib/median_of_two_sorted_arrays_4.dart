import 'dart:math' as math;

class MedianOfTwoSortedArrays4 {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    var m = nums1.length;
    var n = nums2.length;
    if (m > n) {
      final temp = nums1;
      nums1 = nums2;
      nums2 = temp;
      final tmp = m;
      m = n;
      n = tmp;
    }
    var iMin = 0;
    var iMax = m;
    var halfLen = (m + n + 1) ~/ 2;
    while (iMin <= iMax) {
      var i = (iMin + iMax) ~/ 2;
      var j = halfLen - i;
      if (i < iMax && nums2[j - 1] > nums1[i]) {
        iMin = i + 1;
      } else if (i > iMin && nums1[i - 1] > nums2[j]) {
        iMax = i - 1;
      } else {
        var maxLeft = 0;
        if (i == 0) {
          maxLeft = nums2[j - 1];
        } else if (j == 0) {
          maxLeft = nums1[i - 1];
        } else {
          maxLeft = math.max(nums1[i - 1], nums2[j - 1]);
        }
        if ((m + n) % 2 == 1) {
          return maxLeft.toDouble();
        }
        var minRight = 0;
        if (i == m) {
          minRight = nums2[j];
        } else if (j == n) {
          minRight = nums1[i];
        } else {
          minRight = math.min(nums2[j], nums1[i]);
        }
        return (maxLeft + minRight) / 2.0;
      }
    }
    return 0.0;
  }
}