/*
 Given an integer array nums, return the greatest common divisor of the smallest number and largest number in nums.

 The greatest common divisor of two numbers is the largest positive integer that evenly divides both numbers.

 Example 1:
 Input: nums = [2,5,6,9,10]
 Output: 2
 Explanation:
 The smallest number in nums is 2.
 The largest number in nums is 10.
 The greatest common divisor of 2 and 10 is 2.
 
 Example 2:
 Input: nums = [7,5,6,8,3]
 Output: 1
 Explanation:
 The smallest number in nums is 3.
 The largest number in nums is 8.
 The greatest common divisor of 3 and 8 is 1.
 
 Example 3:
 Input: nums = [3,3]
 Output: 3
 Explanation:
 The smallest number in nums is 3.
 The largest number in nums is 3.
 The greatest common divisor of 3 and 3 is 3.
  

 Constraints:

 2 <= nums.length <= 1000
 1 <= nums[i] <= 1000
 */

import Foundation

class Solution {
    
    // The first solution
    func findGCDFirst(_ nums: [Int]) -> Int {
        var result = 0
        var maximum = nums.max()!
        var minimum = nums.min()!
        
        while minimum != 0 {
            result = maximum
            maximum = minimum
            minimum = result % maximum
        }
        
        return maximum
    }
    
    // The second solution
    func findGCDSecond(_ nums: [Int]) -> Int {
        var maximum = nums.max()!
        var minimum = nums.min()!
        
        let result: Int = maximum % minimum
        if result != 0 {
            return findGCDSecond([minimum, result])
        } else {
            return minimum
        }
            
    }
}

let solution = Solution()
solution.findGCDFirst([2,5,6,9,10])   // 2
solution.findGCDFirst([7,5,6,8,3])   // 1
solution.findGCDFirst([3,3])   // 3

solution.findGCDSecond([2,5,6,9,10])   // 2
solution.findGCDSecond([7,5,6,8,3])   // 1
solution.findGCDSecond([3,3])   // 3
