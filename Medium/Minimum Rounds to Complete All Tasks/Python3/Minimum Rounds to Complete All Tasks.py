class Solution:
    def minimumRounds(self, tasks: [int]) -> int:
        count = 0
        dictionary = {}
        
        for i in tasks:
            if i in dictionary:
                dictionary[i] += 1
            else:
                dictionary[i] = 1
                
        for ind, val in dictionary.items():
            if val == 1:
                return -1
            count += (val - 1) // 3  + 1
            
        return count

            