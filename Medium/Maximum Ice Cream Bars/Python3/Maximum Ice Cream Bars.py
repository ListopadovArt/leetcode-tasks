class Solution:
    def maxIceCream(self, costs: [int], coins: int) -> int:
        costs.sort()
        result = 0
        
        for i in costs :
            if i <= coins:
                coins -= i
                result += 1
        
        return result
        
        
        
solution = Solution()
solution.maxIceCream([1,3,2,4,1], 7)
