/*
 Given a string s consisting of words and spaces, return the length of the last word in the string.
 
 A word is a maximal
 substring
 consisting of non-space characters only.
 
 Example 1:
 
 Input: s = "Hello World"
 Output: 5
 Explanation: The last word is "World" with length 5.
 
 Example 2:
 
 Input: s = "   fly me   to   the moon  "
 Output: 4
 Explanation: The last word is "moon" with length 4.
 
 Example 3:
 
 Input: s = "luffy is still joyboy"
 Output: 6
 Explanation: The last word is "joyboy" with length 6.
 
 Constraints:
 
 1 <= s.length <= 104
 s consists of only English letters and spaces ' '.
 There will be at least one word in s.
 
 https://leetcode.com/problems/length-of-last-word/description/
 */

class Solution {
    func lengthOfLastWordFirst(_ s: String) -> Int {
        s.split(separator: " ").last?.count ?? 0
    }
    
    func lengthOfLastWordSecond(_ s: String) -> Int {
        var result = 0
        var count = 0
        
        for c in s {
            if c == " " {
                if count > 0 {
                    result = count
                }
                count = 0
            } else {
                count += 1
            }
        }
        return count > 0 ? count : result
    }
}

let solution = Solution()
solution.lengthOfLastWordFirst("Hello World")   // 5
solution.lengthOfLastWordFirst("   fly me   to   the moon  ")   // 4
solution.lengthOfLastWordFirst("luffy is still joyboy")   // 6

solution.lengthOfLastWordSecond("Hello World")   // 5
solution.lengthOfLastWordSecond("   fly me   to   the moon  ")   // 4
solution.lengthOfLastWordSecond("luffy is still joyboy")   // 6
