class Solution:
    def searchInsert(self, nums: [int], target: int) -> int:
        lenth = len(nums)
        for i in range(0, lenth):
            if target <= nums[i]:
                return i
        return lenth
            
        
solution = Solution()
solution.searchInsert([1,3,5,6], 5)   # 2
solution.searchInsert([1,3,5,6], 2)   # 1
solution.searchInsert([1,3,5,6], 7)   # 4