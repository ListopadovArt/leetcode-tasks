class Solution:
    def xorOperation(self, n: int, start: int) -> int:
        start = start
        index = 0
        array = []
        result = 0
        
        while index < n:
            array.append(start)
            start += 2
            index += 1
            
        for i in array:
            result ^= i
            
        return result