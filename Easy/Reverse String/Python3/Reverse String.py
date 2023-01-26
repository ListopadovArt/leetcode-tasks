example = ["h","e","l","l","o"]

class Solution:
    def reverseString(self, s: list[str]) -> None:
        s.reverse()

solution = Solution()
solution.reverseString(example)
print(example)