/*
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
 
 The overall run time complexity should be O(log (m+n)).
 
 
 
 Example 1:
 
 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.
 Example 2:
 
 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 
 Constraints:
 
 nums1.length == m
 nums2.length == n
 0 <= m <= 1000
 0 <= n <= 1000
 1 <= m + n <= 2000
 -106 <= nums1[i], nums2[i] <= 106
 
 */

import Foundation

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        let array = (nums1 + nums2).sorted()
        let median = array.count / 2
        
        guard !array.isEmpty else {
            return 0
        }
        
        if array.count % 2 == 0 {
            return Double(array[median] + array[median - 1]) / 2
        } else {
            return Double(array[median])
        }
    }
}

let solution = Solution()
solution.findMedianSortedArrays([1,2], [3,4]) // 2.5
solution.findMedianSortedArrays([1,3], [2]) // 2
solution.findMedianSortedArrays([1,3,5], [2,7,8]) // 4
solution.findMedianSortedArrays([1], [2]) // 1.5
solution.findMedianSortedArrays([0], [2]) // 1
solution.findMedianSortedArrays([], [2]) // 2
solution.findMedianSortedArrays([], [1, 2, 3, 4, 5]) // 3
solution.findMedianSortedArrays([], [])   // 0
