/*
 Given a string s, reverse the string according to the following rules:

 All the characters that are not English letters remain in the same position.
 All the English letters (lowercase or uppercase) should be reversed.
 Return s after reversing it.

 Example 1:

 Input: s = "ab-cd"
 Output: "dc-ba"
 
 Example 2:

 Input: s = "a-bC-dEf-ghIj"
 Output: "j-Ih-gfE-dCba"
 
 Example 3:

 Input: s = "Test1ng-Leet=code-Q!"
 Output: "Qedo1ct-eeLg=ntse-T!"

 Constraints:

 1 <= s.length <= 100
 s consists of characters with ASCII values in the range [33, 122].
 s does not contain '\"' or '\\'.
 */

import Foundation

class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var array:[Character] = []
        var s = Array(s)
        var index = 0
        
        s.forEach { char in
            if char.isLetter {
                array.insert(char, at: 0)
            }
        }
        
        for i in 0..<s.count {
            if s[i].isLetter {
                s[i] = array[index]
                index += 1
            }
        }
        
        return String(s)
    }
}

let solution = Solution()
solution.reverseOnlyLetters("ab-cd")   // "dc-ba"
solution.reverseOnlyLetters("a-bC-dEf-ghIj")   // "j-Ih-gfE-dCba"
solution.reverseOnlyLetters("Test1ng-Leet=code-Q!")   // "Qedo1ct-eeLg=ntse-T!"

