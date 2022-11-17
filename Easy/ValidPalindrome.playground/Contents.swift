/*
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

  

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
  
 */

class Solution {
    
    // First solution
    func isPalindromeFirst(_ s: String) -> Bool {
        var alphabet = "abcdefghijklmnopqrstuvwxyz0123456789"
        var text = Array(s.lowercased())
        var string = ""
        
        for i in text {
            if alphabet.contains(i) {
                string.append(i)
            }
        }
        return string == reverse(string)
    }
    
    private func reverse(_ text: String) -> String {
        String(Array(text).reversed())
    }
    
    // Second solution
    func isPalindromeSecond(_ s: String) -> Bool {
        var result = s.filter{$0.isLetter || $0.isNumber}.lowercased()
        return result == String(result.reversed())
    }
}

let solution = Solution()
solution.isPalindromeFirst("A man, a plan, a canal: Panama")   // true
solution.isPalindromeFirst(" ")   // true
solution.isPalindromeFirst("race a car")   // false
solution.isPalindromeFirst("0P")   // false

solution.isPalindromeSecond("A man, a plan, a canal: Panama")   // true
solution.isPalindromeSecond(" ")   // true
solution.isPalindromeSecond("race a car")   // false
solution.isPalindromeSecond("0P")   // false
