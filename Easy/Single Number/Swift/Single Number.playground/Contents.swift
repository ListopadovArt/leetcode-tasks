/*
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
 
 You must implement a solution with a linear runtime complexity and use only constant extra space.
 
 Example 1:
 
 Input: nums = [2,2,1]
 Output: 1
 
 Example 2:
 
 Input: nums = [4,1,2,1,2]
 Output: 4
 
 Example 3:
 
 Input: nums = [1]
 Output: 1
 
 Constraints:
 
 1 <= nums.length <= 3 * 104
 -3 * 104 <= nums[i] <= 3 * 104
 Each element in the array appears twice except for one element which appears only once.
 */

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        guard nums.count > 1 else {
            return nums[0]
        }
        
        var dictionary:[Int:Int] = [:]
        
        for i in nums {
            if dictionary[i] != nil {
                dictionary[i]! += 1
            } else {
                dictionary[i] = 1
            }
        }
        
        for (_, value) in dictionary.enumerated() {
            if value.value == 1 {
                return value.key
            }
        }
        
        return 0
    }
}

let solution = Solution()
solution.singleNumber([2,2,1])  // 1
solution.singleNumber([4,1,2,1,2])  // 4
solution.singleNumber([1])  // 1
