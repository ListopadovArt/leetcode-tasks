class Solution:
    def numberOfMatchesFirst(self, n: int) -> int:
        sum = 0
        
        while n != 1:
            if n % 2 == 0:
                sum += n / 2
                n = n / 2
            else:
                sum += (n - 1) / 2
                n = ((n - 1) / 2) + 1
        return int(sum)

    def numberOfMatchesSecond(self, n: int) -> int:
        return n - 1