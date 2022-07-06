
/*
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
 
 Return the running sum of nums.
 
 
 Example 1:
 
 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 Example 2:
 
 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 Example 3:
 
 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
 */

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        let nums = nums
        var newArray = [Int]()
        
        for i in 0...nums.count-1 {
            if i == 0 {
                newArray.insert(nums[0], at: 0)
            } else {
                newArray.append(newArray[i-1] + nums[i])
            }
        }
        return newArray
    }
}

let solution = Solution()
solution.runningSum([1,1,1,1,1])
solution.runningSum([3,1,2,10,1])


