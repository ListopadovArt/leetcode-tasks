/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 Note that you must do this in-place without making a copy of the array.
 
 Example 1:
 
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Example 2:
 
 Input: nums = [0]
 Output: [0]
 
 Constraints:
 
 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
 */

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var count = 0
        
        for i in 0..<nums.count {
            if nums[i] != 0 {
                (nums[count], nums[i]) = (nums[i], nums[count])
                count += 1
            }
        }
    }
}

var nums_1 = [0,1,0,3,12]
var nums_2 = [0]
var nums_3 = [0,0,1]

let solution = Solution()

solution.moveZeroes(&nums_1)
nums_1   // [1,3,12,0,0]

solution.moveZeroes(&nums_2)
nums_2   // [0]

solution.moveZeroes(&nums_3)
nums_3   // [1,0,0]
