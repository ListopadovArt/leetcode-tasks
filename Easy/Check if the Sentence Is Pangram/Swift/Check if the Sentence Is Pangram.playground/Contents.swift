/*
 A pangram is a sentence where every letter of the English alphabet appears at least once.

 Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or false otherwise.
  
 Example 1:

 Input: sentence = "thequickbrownfoxjumpsoverthelazydog"
 Output: true
 Explanation: sentence contains at least one of every letter of the English alphabet.
 
 Example 2:

 Input: sentence = "leetcode"
 Output: false
  
 Constraints:

 1 <= sentence.length <= 1000
 sentence consists of lowercase English letters.
 */

class Solution {
    func checkIfPangramFirst(_ sentence: String) -> Bool {
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        var dictionary: [Character: Int] = [:]
        
        for i in alphabet {
            dictionary[i] = 0
        }
        
        for c in sentence {
            if dictionary[c] != nil {
                dictionary[c]! += 1
            }
        }
        
        for v in dictionary.values {
            if v == 0 {
                return false
            }
        }
        return true
    }
    
    func checkIfPangramSecond(_ sentence: String) -> Bool {
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        var result = true
        
        for c in alphabet {
            if sentence.contains(c) {
                continue
            } else {
                result = false
            }
        }
        return result
    }
    
    func checkIfPangramThird(_ sentence: String) -> Bool {
        Set(sentence).count >= 26
    }
}

let solution = Solution()

solution.checkIfPangramFirst("thequickbrownfoxjumpsoverthelazydog")   // true
solution.checkIfPangramFirst("leetcode")   // false

solution.checkIfPangramSecond("thequickbrownfoxjumpsoverthelazydog")   // true
solution.checkIfPangramSecond("leetcode")   // false

solution.checkIfPangramThird("thequickbrownfoxjumpsoverthelazydog")   // true
solution.checkIfPangramThird("leetcode")   // false
