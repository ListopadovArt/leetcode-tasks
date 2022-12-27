class Solution:
    def isPalindrome(self, x: int) -> bool:
        number = x
        reverseNumber = 0
        
        while number > 0:
            remains = number % 10
            reverseNumber = reverseNumber * 10 + remains
            number //= 10
            
        return x == reverseNumber
    
    
solution = Solution()

solution.isPalindrome(121)
solution.isPalindrome(10)
solution.isPalindrome(0)

print(solution.isPalindrome(121))   # True
print(solution.isPalindrome(10))   # False
print(solution.isPalindrome(0))   # True