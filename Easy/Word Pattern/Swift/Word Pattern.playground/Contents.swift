/*
 Given a pattern and a string s, find if s follows the same pattern.
 
 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.
 
 Example 1:
 
 Input: pattern = "abba", s = "dog cat cat dog"
 Output: true
 Example 2:
 
 Input: pattern = "abba", s = "dog cat cat fish"
 Output: false
 Example 3:
 
 Input: pattern = "aaaa", s = "dog cat cat dog"
 Output: false
 
 Constraints:
 
 1 <= pattern.length <= 300
 pattern contains only lower-case English letters.
 1 <= s.length <= 3000
 s contains only lowercase English letters and spaces ' '.
 s does not contain any leading or trailing spaces.
 All the words in s are separated by a single space.
 */

import Foundation

class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        
        var pattern = Array(pattern)
        var s = s.split(separator: " ").map{String($0)}
        
        guard pattern.count == s.count else {
            return false
        }
        
        guard Set(pattern).count == Set(s).count else {
            return false
        }
        
        var dictionary: [Character:String] = [:]
        
        for i in 0..<pattern.count {
            if let temp = dictionary[pattern[i]] {
                if s[i] != temp {
                    return false
                }
            } else {
                dictionary[pattern[i]] = s[i]
            }
            dictionary
        }
        return true
    }
}

let solution = Solution()
solution.wordPattern("abba", "dog cat cat dog")   // true
solution.wordPattern("abba", "dog cat cat fish")   // false
solution.wordPattern("aaaa", "dog cat cat dog")   // false
solution.wordPattern("abab", "dog cat cat dog")   // false
solution.wordPattern("abba", "dog dog dog dog")   // false
