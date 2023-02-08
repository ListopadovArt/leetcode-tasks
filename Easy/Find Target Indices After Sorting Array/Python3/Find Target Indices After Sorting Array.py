class Solution:
    def targetIndices(self, nums: list[int], target: int) -> list[int]:
        nums.sort()
        result = []
        for i in range(0,len(nums)):
            if nums[i] == target:
                result.append(i)
        return result
                

solution = Solution()
result_1 = solution.targetIndices([1,2,5,2,3], 2)   # [1,2]
result_2 = solution.targetIndices([1,2,5,2,3], 3)   # [3]

print(result_1)
print(result_2)