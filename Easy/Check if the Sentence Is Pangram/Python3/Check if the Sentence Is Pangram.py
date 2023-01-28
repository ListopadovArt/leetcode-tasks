class Solution:
    def checkIfPangram(self, sentence: str) -> bool:
        return len(set(sentence)) == 26

solution = Solution()
result_1 = solution.checkIfPangram("thequickbrownfoxjumpsoverthelazydog")   # True
result_2 = solution.checkIfPangram("leetcode")   # False

print(result_1)
print(result_2)