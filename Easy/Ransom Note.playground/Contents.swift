/*
 Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
 
 Each letter in magazine can only be used once in ransomNote.
 
 Example 1:
 Input: ransomNote = "a", magazine = "b"
 Output: false
 Example 2:
 
 Input: ransomNote = "aa", magazine = "ab"
 Output: false
 Example 3:
 
 Input: ransomNote = "aa", magazine = "aab"
 Output: true
 
 Constraints:
 
 1 <= ransomNote.length, magazine.length <= 105
 ransomNote and magazine consist of lowercase English letters.
 */

import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        let noteMap = map(ransomNote.replacingOccurrences(of: " ", with: ""))
        let letterMap = map(magazine)
        
        for (key, _) in noteMap {
            if letterMap[key] == nil {
                return false
            }
            
            let noteCount = noteMap[key]!
            let letterCount = letterMap[key]!
            
            if letterCount < noteCount {
                return false
            }
        }
        return true
    }
    
    func map(_ text: String) -> [Character: Int] {
        var map = [Character: Int]()
        let chars = Array(text)
        
        for char in chars {
            if map[char] != nil {
                map[char] = map[char]! + 1
            } else {
                map[char] = 1
            }
        }
        return map
    }
}

let solution = Solution()
solution.canConstruct("a", "b")   // false
solution.canConstruct("a", "a")   // true
solution.canConstruct("aa", "ab")   // false
solution.canConstruct("aa", "aab")   // true
