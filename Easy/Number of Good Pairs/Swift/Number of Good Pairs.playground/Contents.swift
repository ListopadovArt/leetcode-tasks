/*
 Given an array of integers nums, return the number of good pairs.

 A pair (i, j) is called good if nums[i] == nums[j] and i < j.

 Example 1:

 Input: nums = [1,2,3,1,1,3]
 Output: 4
 Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
 Example 2:

 Input: nums = [1,1,1,1]
 Output: 6
 Explanation: Each pair in the array are good.
 Example 3:

 Input: nums = [1,2,3]
 Output: 0
  
 Constraints:

 1 <= nums.length <= 100
 1 <= nums[i] <= 100
 */


class Solution {
    // The first solution
    func numIdenticalPairsFirst(_ nums: [Int]) -> Int {
        var count = 0
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if i < j && nums[i] == nums[j]{
                    count += 1
                }
            }
        }
        return count
    }
    // The second solution
    func numIdenticalPairsSecond(_ nums: [Int]) -> Int {
        var count = 0
        var dictionary = [Int:Int]()
        
        for number in nums {
            if let dict = dictionary[number] {
                count += dict
                dictionary[number]! += 1
            } else {
                dictionary[number] = 1
            }
        }
        return count
    }
}

let solution = Solution()
solution.numIdenticalPairsFirst([1,2,3,1,1,3])   // 4
solution.numIdenticalPairsFirst([1,1,1,1])   // 6
solution.numIdenticalPairsFirst([1,2,3])   // 0

solution.numIdenticalPairsSecond([1,2,3,1,1,3])   // 4
solution.numIdenticalPairsSecond([1,1,1,1])   // 6
solution.numIdenticalPairsSecond([1,2,3])   // 0
