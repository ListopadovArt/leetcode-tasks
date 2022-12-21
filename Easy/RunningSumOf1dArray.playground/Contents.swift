
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
 
 Constraints:

 1 <= nums.length <= 1000
 -10^6 <= nums[i] <= 10^6
 */

import Foundation

class Solution {
    
    // The first solution
    func runningSumFirst(_ nums: [Int]) -> [Int] {
        guard nums.count != 0 else {
            return []
        }
        
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
    
    // The second solution
    func runningSumSecond(_ nums: [Int]) -> [Int] {
        guard nums.count != 0 else {
            return []
        }
        var result: [Int] = []
        var sum = 0
       
      
        for i in nums{
            sum += i
            result.append(sum)
        }
        return result
    }
}

let solution = Solution()
solution.runningSumFirst([1,1,1,1,1])   // [1,2,3,4,5]
solution.runningSumFirst([3,1,2,10,1])   // [3,4,6,16,17]
solution.runningSumFirst([])   // []

solution.runningSumSecond([1,1,1,1,1])   // [1,2,3,4,5]
solution.runningSumSecond([3,1,2,10,1])   // [3,4,6,16,17]
solution.runningSumSecond([])   // []

