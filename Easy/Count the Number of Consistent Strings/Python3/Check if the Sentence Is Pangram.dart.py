class Solution:
    def countConsistentStrings(self, allowed: str, words: list[str]) -> int:
        count = 0
        for word in words:
            isContain = True
            for char in word:
                if char not in allowed:
                    isContain = False
            if isContain:
                count += 1
        return count

solution = Solution()
res_1 = solution.countConsistentStrings("ab", ["ad","bd","aaab","baa","badab"])   # 2
print(res_1)