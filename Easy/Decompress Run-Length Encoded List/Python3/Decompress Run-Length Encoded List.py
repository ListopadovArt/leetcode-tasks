class Solution:
    def decompressRLElist(self, nums: list[int]) -> list[int]:
        result = []
        for i in range(len(nums)):
            if i % 2 != 0:
                count = nums[i - 1]
                while count > 0:
                    result.append(nums[i])
                    count -= 1
        return result


solution = Solution()
res_1 = solution.decompressRLElist([1,2,3,4])   # [2,4,4,4]
res_2 = solution.decompressRLElist([1,1,2,3])   # [1,3,3]

print(res_1)
print(res_2)