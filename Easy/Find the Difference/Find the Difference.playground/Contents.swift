/*
 You are given two strings s and t.

 String t is generated by random shuffling string s and then add one more letter at a random position.

 Return the letter that was added to t.

 Example 1:

 Input: s = "abcd", t = "abcde"
 Output: "e"
 Explanation: 'e' is the letter that was added.
 
 Example 2:

 Input: s = "", t = "y"
 Output: "y"
  
 Constraints:

 0 <= s.length <= 1000
 t.length == s.length + 1
 s and t consist of lowercase English letters.
 
 https://leetcode.com/problems/find-the-difference/
 */

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var s = Array(s).sorted()
        var t = Array(t).sorted()

        for i in 0..<s.count {
            if s[i] != t[i] {
                return t[i]
            }
        }
        
        return t.last ?? Character(" ")
    }
}

let solution = Solution()
solution.findTheDifference("abcd", "abcde")   // "e"
solution.findTheDifference("", "y")   // "y"
solution.findTheDifference("a", "aa")   // "a"
