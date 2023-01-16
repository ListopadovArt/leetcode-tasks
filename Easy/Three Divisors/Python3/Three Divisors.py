class Solution:
    def isThree(self, n: int) -> bool:
        result = 0
        for i in range(1,n+1):
            if n % i == 0:
                result += 1
        return result == 3


solution = Solution()
res_2 = solution.isThree(2)   # False
res_4 = solution.isThree(4)   # True
res_12 = solution.isThree(4)   # True

print(res_2)
print(res_4)
print(res_12)