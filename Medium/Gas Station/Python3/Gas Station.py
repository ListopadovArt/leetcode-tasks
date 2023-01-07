class Solution:
    def canCompleteCircuit(self, gas: [int], cost: [int]) -> int:
        if sum(gas) < sum(cost):
            return -1
        
        start = 0
        current = 0
        
        for i in range(len(gas)):
            current += gas[i] - cost[i]
            
            if current < 0:
                current = 0
                start = i + 1
        
        return start
        
        
        
        
        
        
solution = Solution()
example_1 = solution.canCompleteCircuit([1,2,3,4,5], [3,4,5,1,2])   # 3
example_2 = solution.canCompleteCircuit([2,3,4], [3,4,3])   # -1

print(example_1)
print(example_2)