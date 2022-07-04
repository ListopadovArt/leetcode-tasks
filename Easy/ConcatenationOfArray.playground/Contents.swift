
/*
 Given an integer array nums of length n, you want to create an array ans of length 2n where ans[i] == nums[i] and ans[i + n] == nums[i] for 0 <= i < n (0-indexed).
 
 Specifically, ans is the concatenation of two nums arrays.
 
 Return the array ans.
 
 
 Example 1:
 
 Input: nums = [1,2,1]
 Output: [1,2,1,1,2,1]
 Explanation: The array ans is formed as follows:
 - ans = [nums[0],nums[1],nums[2],nums[0],nums[1],nums[2]]
 - ans = [1,2,1,1,2,1]
 Example 2:
 
 Input: nums = [1,3,2,1]
 Output: [1,3,2,1,1,3,2,1]
 Explanation: The array ans is formed as follows:
 - ans = [nums[0],nums[1],nums[2],nums[3],nums[0],nums[1],nums[2],nums[3]]
 - ans = [1,3,2,1,1,3,2,1]
 
 */

import Foundation

// The first solution
class Solution {
    func getConcatenationFirst(_ nums: [Int]) -> [Int] {
        nums + nums
    }
    
    // The second solution
    func getConcatenationSecond(_ nums: [Int]) -> [Int] {
        [nums, nums].flatMap {$0}
    }
    
    // The third solution
    func getConcatenationThird(_ nums: [Int]) -> [Int] {
        let array = [nums, nums].reduce([], { (result: [Int], element: [Int]) -> [Int] in
            return result + element
        })
        return array
    }
    
    // The fourth solution
    func getConcatenationFourth(_ nums: [Int]) -> [Int] {
        Array([nums,nums].joined())
    }
}

let solution = Solution()
solution.getConcatenationFirst([9,3,5])
solution.getConcatenationSecond([6,3,2,9,6])
solution.getConcatenationThird([1,3,2,5,6,7])
solution.getConcatenationFourth([5,3,7,5,6,7,8])
