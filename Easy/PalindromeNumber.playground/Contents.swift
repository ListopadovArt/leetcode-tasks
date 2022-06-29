
/*
 Given an integer x, return true if x is palindrome integer.
 
 An integer is a palindrome when it reads the same backward as forward.
 
 For example, 121 is a palindrome while 123 is not.
 
 
 Example 1:
 
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 Example 2:
 
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 Example 3:
 
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 */

import Foundation

class Solution {
    
    //The first solution
    func isPalindromeFirst(_ x: Int) -> Bool {
        var number = x
        var reverseNumber = 0
        
        while number > 0 {
            let remains = number % 10
            reverseNumber = reverseNumber * 10 + remains
            number = number / 10
        }
        return x == reverseNumber
    }
    
    //The second solution
    func isPalindromeSecond(_ x: Int) -> Bool {
        let numberString = String(x)
        let numberReverce = String(numberString.reversed())
        
        if numberString == numberReverce {
            return true
        } else {
            return false
        }
    }
}

let solution = Solution()
solution.isPalindromeFirst(123)
solution.isPalindromeFirst(0)
solution.isPalindromeFirst(3223)

solution.isPalindromeSecond(123)
solution.isPalindromeSecond(0)
solution.isPalindromeSecond(3223)
