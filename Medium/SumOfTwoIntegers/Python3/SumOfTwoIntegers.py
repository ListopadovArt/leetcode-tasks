class Solution:
    def getSum(self, a: int, b: int) -> int:
        if a <= 1000 and a >= -1000:
            if b <= 1000 and b >= -1000:
                return a + b
        return 0
            