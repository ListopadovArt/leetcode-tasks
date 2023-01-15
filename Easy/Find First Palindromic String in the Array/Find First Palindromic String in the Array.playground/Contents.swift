/*
 Given an array of strings words, return the first palindromic string in the array. If there is no such string, return an empty string "".
 
 A string is palindromic if it reads the same forward and backward.
 
 
 
 Example 1:
 
 Input: words = ["abc","car","ada","racecar","cool"]
 Output: "ada"
 Explanation: The first string that is palindromic is "ada".
 Note that "racecar" is also palindromic, but it is not the first.
 Example 2:
 
 Input: words = ["notapalindrome","racecar"]
 Output: "racecar"
 Explanation: The first and only string that is palindromic is "racecar".
 Example 3:
 
 Input: words = ["def","ghi"]
 Output: ""
 Explanation: There are no palindromic strings, so the empty string is returned.
 
 
 Constraints:
 
 1 <= words.length <= 100
 1 <= words[i].length <= 100
 words[i] consists only of lowercase English letters.
 */

import Foundation

class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for i in 0..<words.count{
            if isPalindrome(words[i]) {
                return words[i]
            }
        }
        return ""
    }
    
    func isPalindrome(_ text: String) -> Bool {
        let chars = Array(text)
            let length = chars.count
            
            for i in 0..<length / 2 {
                if chars[i] != chars[length - i - 1] {
                    return false
                }
            }
            return true
    }
}

let solution = Solution()
solution.firstPalindrome(["abc","car","ada","racecar","cool"])   // "ada"
solution.firstPalindrome(["notapalindrome","racecar"])   // "racecar"
solution.firstPalindrome(["def","ghi"])   // ""
