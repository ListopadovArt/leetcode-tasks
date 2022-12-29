class Solution:
    def findGCD(self, nums: [int]) -> int:
        mimimum = min(nums)
        maximum = max(nums)
        
        result = maximum % mimimum
        
        while result != 0:
            return Solution().findGCD([mimimum, result])
        else:
            return mimimum
        
        
solution = Solution()
solution.findGCD([2,5,6,9,10])   # 2
solution.findGCD([7,5,6,8,3])   # 1
solution.findGCD([3,3])   # 3
