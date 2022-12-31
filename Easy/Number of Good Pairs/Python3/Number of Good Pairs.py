class Solution:
    # The first solution:
    def numIdenticalPairsFirst(self, nums: [int]) -> int:
        count = 0
        for i in range(0, len(nums)):
            for j in range(i+1, len(nums)):
                if i < j and nums[i] == nums[j]:
                    count += 1
        return count
    
    # The second solution:
    def numIdenticalPairsSecond(self, nums: [int]) -> int:
        count = 0
        dictionary = {}
        for number in nums:
            if number in dictionary:
                count += dictionary[number]
                dictionary[number] += 1
            else:
                dictionary[number] = 1
        return count
    
solution = Solution()
solution.numIdenticalPairsFirst([1,2,3,1,1,3])   # 4
solution.numIdenticalPairsFirst([1,1,1,1])   # 6
solution.numIdenticalPairsFirst([1,2,3])   # 0

solution.numIdenticalPairsSecond([1,2,3,1,1,3])   # 4
solution.numIdenticalPairsSecond([1,1,1,1])   # 6
solution.numIdenticalPairsSecond([1,2,3])   # 0