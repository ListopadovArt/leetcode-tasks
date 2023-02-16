/*
 You are given a 0-indexed integer array nums. In one operation, you may do the following:

 Choose two integers in nums that are equal.
 Remove both integers from nums, forming a pair.
 The operation is done on nums as many times as possible.

 Return a 0-indexed integer array answer of size 2 where answer[0] is the number of pairs that are formed and answer[1] is the number of leftover integers in nums after doing the operation as many times as possible.

 Example 1:

 Input: nums = [1,3,2,1,3,2,2]
 Output: [3,1]
 Explanation:
 Form a pair with nums[0] and nums[3] and remove them from nums. Now, nums = [3,2,3,2,2].
 Form a pair with nums[0] and nums[2] and remove them from nums. Now, nums = [2,2,2].
 Form a pair with nums[0] and nums[1] and remove them from nums. Now, nums = [2].
 No more pairs can be formed. A total of 3 pairs have been formed, and there is 1 number leftover in nums.
 
 Example 2:

 Input: nums = [1,1]
 Output: [1,0]
 Explanation: Form a pair with nums[0] and nums[1] and remove them from nums. Now, nums = [].
 No more pairs can be formed. A total of 1 pair has been formed, and there are 0 numbers leftover in nums.
 
 Example 3:

 Input: nums = [0]
 Output: [0,1]
 Explanation: No pairs can be formed, and there is 1 number leftover in nums.

 Constraints:

 1 <= nums.length <= 100
 0 <= nums[i] <= 100
 
 https://leetcode.com/problems/maximum-number-of-pairs-in-array/
 */

class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else {
            return [0,1]
        }
        var dictionary:[Int:Int] = [:]
        
        for num in nums {
            if dictionary[num] != nil {
                dictionary[num]! += 1
            } else {
                dictionary[num] = 1
            }
        }
                
        var count = 0
        var res = 0
        
        for d in dictionary {
            res += d.value % 2
            count += d.value / 2
        }
 
        return [count, res]
    }
}

let solution = Solution()
solution.numberOfPairs([1,3,2,1,3,2,2])   // [3,1]
solution.numberOfPairs([1,1])   // [1,0]
solution.numberOfPairs([0])   // [0,1]
solution.numberOfPairs([1,2,3,4,5])   // [0,5]
solution.numberOfPairs([5,12,53,22,7,59,41,54,71,24,91,74,62,47,20,14,73,11,82,2,15,38,38,20,57,70,86,93,38,75,94,19,36,40,28,6,35,86,38,94,4,90,18,87,24,22])   // [7,32]
