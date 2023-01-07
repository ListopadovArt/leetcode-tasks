class Solution:
    def intersection(self, nums1: [int], nums2: [int]) -> [int]:
        result = []
        
        for i in nums1:
            if i in nums2:
                result.append(i)
        
        return list(set(result))
        
        
solution = Solution()
example_1 = solution.intersection([1,2,2,1], [2,2])   # [2]
example_2 = solution.intersection([4,9,5], [9,4,9,8,4])   # [4,9]

print(example_1)
print(example_2)
