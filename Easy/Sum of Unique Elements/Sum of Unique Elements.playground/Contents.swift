/*
 You are given an integer array nums. The unique elements of an array are the elements that appear exactly once in the array.

 Return the sum of all the unique elements of nums.

 Example 1:

 Input: nums = [1,2,3,2]
 Output: 4
 Explanation: The unique elements are [1,3], and the sum is 4.
 
 Example 2:

 Input: nums = [1,1,1,1,1]
 Output: 0
 Explanation: There are no unique elements, and the sum is 0.
 
 Example 3:

 Input: nums = [1,2,3,4,5]
 Output: 15
 Explanation: The unique elements are [1,2,3,4,5], and the sum is 15.
  
 Constraints:

 1 <= nums.length <= 100
 1 <= nums[i] <= 100
 
 https://leetcode.com/problems/sum-of-unique-elements/
 */

class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var dictionary:[Int:Int] = [:]
        
        for num in nums {
            if dictionary[num] != nil {
                dictionary[num]! += 1
            } else {
                dictionary[num] = 1
            }
        }
        
        var count = 0
        dictionary
        for d in dictionary {
            if d.value == 1 {
                count += d.key
            }
        }
        
        return count
    }
}

let solution = Solution()
solution.sumOfUnique([1,2,3,2])   // 4
solution.sumOfUnique([1,1,1,1,1])   // 0
solution.sumOfUnique([1,2,3,4,5])   // 15
