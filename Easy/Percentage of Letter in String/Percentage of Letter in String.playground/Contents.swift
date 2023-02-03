/*
 Given a string s and a character letter, return the percentage of characters in s that equal letter rounded down to the nearest whole percent.
 
 Example 1:
 
 Input: s = "foobar", letter = "o"
 Output: 33
 Explanation:
 The percentage of characters in s that equal the letter 'o' is 2 / 6 * 100% = 33% when rounded down, so we return 33.
 
 Example 2:
 
 Input: s = "jjjj", letter = "k"
 Output: 0
 Explanation:
 The percentage of characters in s that equal the letter 'k' is 0%, so we return 0.
 
 Constraints:
 
 1 <= s.length <= 100
 s consists of lowercase English letters.
 letter is a lowercase English letter.
 
 */

class Solution {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        var result = 0
        var array = Array(s)
        
        array.map{ if $0 == letter {result += 1}}
        
        if result == 0 {
            return 0
        } else {
            return Int((Double(result)/Double(array.count)) * 100)
        }
    }
}

let solution = Solution()
solution.percentageLetter("foobar", "o")   // 33
solution.percentageLetter("jjjj", "k")   // 0

