/*
 Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
 
 Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:
 
 Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 
 Example 1:
 
 Input: nums = [3,2,2,3], val = 3
 Output: 2, nums = [2,2,_,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 2.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 
 Example 2:
 
 Input: nums = [0,1,2,2,3,0,4,2], val = 2
 Output: 5, nums = [0,1,4,0,3,_,_,_]
 Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
 Note that the five elements can be returned in any order.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 
 
 Constraints:
 
 0 <= nums.length <= 100
 0 <= nums[i] <= 50
 0 <= val <= 100
 
 */

var nums1 = [3,2,2,3]
var nums2 = [0,1,2,2,3,0,4,2]
var nums3 = [2,1,6,4,3,0,0,7,1,2,1,4,1]

class Solution {
    
    func removeElementFirst(_ nums: inout [Int], _ val: Int) -> Int {
        var count = 0
        for i in 0..<nums.count {
            if nums[i] != val {
                count+=1
            } else {
                nums[i] = -1
            }
        }
        nums.sort(by: >)
        return count
    }
    
    func removeElementSecond(_ nums: inout [Int], _ val: Int) -> Int {
        var new = 0
        
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[new] = nums[i]
                new += 1
            }
        }
        return new
    }
}

let solution = Solution()

solution.removeElementFirst(&nums1, 3) // 2
nums1
solution.removeElementFirst(&nums2, 2) // 5
nums2
solution.removeElementFirst(&nums3, 1) // 9
nums3

solution.removeElementSecond(&nums1, 3) // 2
nums1
solution.removeElementSecond(&nums2, 2) // 5
nums2
solution.removeElementSecond(&nums3, 1) // 9
nums3
