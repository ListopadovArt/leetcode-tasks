/*
 We define the usage of capitals in a word to be right when one of the following cases holds:
 
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital, like "Google".
 Given a string word, return true if the usage of capitals in it is right.
 
 Example 1:
 
 Input: word = "USA"
 Output: true
 Example 2:
 
 Input: word = "FlaG"
 Output: false
 
 Constraints:
 
 1 <= word.length <= 100
 word consists of lowercase and uppercase English letters.
 */

import Foundation

class Solution {
    // The first solution
    func detectCapitalUseFirst(_ word: String) -> Bool {
        let wordUpper = word.description.uppercased()
        let wordLower = word.description.lowercased()
        
        guard word != wordLower && word != wordUpper else {
            return true
        }
        
        var w = Array(word)
        var count = 0
        
        for i in 0..<w.count {
            if w[i].isUppercase {
                count += 1
            }
        }
        
        if w[0].isUppercase && count < 2 {
            return true
        }
        return false
    }
    
    // The second solution
    func detectCapitalUseSecond(_ word: String) -> Bool {
        word == word.uppercased() || word == word.lowercased() || word == word.capitalized
    }
}

let solution = Solution()
solution.detectCapitalUseFirst("USA")   // true
solution.detectCapitalUseFirst("FlaG")   // false
solution.detectCapitalUseFirst("Google")   // true
solution.detectCapitalUseFirst("leetcode")   // true

solution.detectCapitalUseSecond("USA")   // true
solution.detectCapitalUseSecond("FlaG")   // false
solution.detectCapitalUseSecond("Google")   // true
solution.detectCapitalUseSecond("leetcode")   // true
