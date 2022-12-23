class Solution:
    def smallestEvenMultipleFirst(self, n: int) -> int:
        num = n
        while True:
            if (num % 2 == 0) and (num % n == 0):
                break
            else:
                num += 1
        return num        
        
        
    def smallestEvenMultipleSecond(self, n: int) -> int:
        return n if n % 2 == 0 else n * 2          