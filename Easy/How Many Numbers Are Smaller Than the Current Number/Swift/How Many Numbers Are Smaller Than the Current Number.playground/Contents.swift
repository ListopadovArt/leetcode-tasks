/*
 Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
 
 Return the answer in an array.
 
 Example 1:
 
 Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
 
 Example 2:
 
 Input: nums = [6,5,4,8]
 Output: [2,1,0,3]
 Example 3:
 
 Input: nums = [7,7,7,7]
 Output: [0,0,0,0]
 
 Constraints:
 
 2 <= nums.length <= 500
 0 <= nums[i] <= 100
 */


class Solution {
    
    // First solution
    func smallerNumbersThanCurrentFirst(_ nums: [Int]) -> [Int] {
        var result:[Int] = []
        
        for i in nums {
            result.append(foundMin(nums, num: i))
        }
        return result
    }
    
    private func foundMin(_ nums: [Int], num: Int) -> Int{
        var count = 0
        
        for i in nums {
            if i < num {
                count += 1
            }
        }
        return count
    }
    
    // Second solution
    func smallerNumbersThanCurrentSecond(_ nums: [Int]) -> [Int] {
            nums.map { i in nums.filter { $0 < i }.count }
        }
}

let solution = Solution()
solution.smallerNumbersThanCurrentFirst([8,1,2,2,3])   // [4,0,1,1,3]
solution.smallerNumbersThanCurrentFirst([6,5,4,8])   // [2,1,0,3]
solution.smallerNumbersThanCurrentFirst([7,7,7,7])   // [0,0,0,0]

solution.smallerNumbersThanCurrentSecond([8,1,2,2,3])   // [4,0,1,1,3]
solution.smallerNumbersThanCurrentSecond([6,5,4,8])   // [2,1,0,3]
solution.smallerNumbersThanCurrentSecond([7,7,7,7])   // [0,0,0,0]
