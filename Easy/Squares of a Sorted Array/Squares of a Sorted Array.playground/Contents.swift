/*
 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

 Example 1:

 Input: nums = [-4,-1,0,3,10]
 Output: [0,1,9,16,100]
 Explanation: After squaring, the array becomes [16,1,0,9,100].
 After sorting, it becomes [0,1,9,16,100].
 
 Example 2:

 Input: nums = [-7,-3,2,3,11]
 Output: [4,9,9,49,121]

 Constraints:

 1 <= nums.length <= 104
 -104 <= nums[i] <= 104
 nums is sorted in non-decreasing order.
 
 https://leetcode.com/problems/squares-of-a-sorted-array/
 
 */

class Solution {
    
    // First solution
    func sortedSquaresFirst(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        nums.map{result.append(abs($0))}
        return result.map { $0 * $0 }.sorted()
    }
    
    // Second solution
    func sortedSquaresSecond(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        
        var left = 0
        var right = nums.count - 1
        
        for _ in 0..<nums.count {
            if nums[left] > nums[right] {
                result.append(nums[left] * nums[left])
                left += 1
            } else {
                result.append(nums[right] * nums[right])
                right -= 1
            }
        }
        
        return result.sorted()
    }
}

let solution = Solution()
solution.sortedSquaresFirst([-4,-1,0,3,10])   // [0,1,9,16,100]
solution.sortedSquaresFirst([-7,-3,2,3,11])   // [4,9,9,49,121]

solution.sortedSquaresSecond([-4,-1,0,3,10])   // [0,1,9,16,100]
solution.sortedSquaresSecond([-7,-3,2,3,11])   // [4,9,9,49,121]
