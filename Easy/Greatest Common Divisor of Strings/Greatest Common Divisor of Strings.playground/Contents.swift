/*
 
 For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).
 
 Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
 
 Example 1:
 
 Input: str1 = "ABCABC", str2 = "ABC"
 Output: "ABC"
 
 Example 2:
 
 Input: str1 = "ABABAB", str2 = "ABAB"
 Output: "AB"
 Example 3:
 
 Input: str1 = "LEET", str2 = "CODE"
 Output: ""
 
 Constraints:
 
 1 <= str1.length, str2.length <= 1000
 str1 and str2 consist of English uppercase letters.
 
 */

class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else {
            return ""
        }
        
        return String(str1.prefix(gcd(str1.count, str2.count)))
    }
    
    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
            return x
        } else {
            return gcd(y, x % y)
        }
    }
}

let solution = Solution()
solution.gcdOfStrings("ABCABC", "ABC")   // "ABC"
solution.gcdOfStrings("ABABAB", "ABAB")   // "AB"
solution.gcdOfStrings("ABAABA", "AB")   // ""
solution.gcdOfStrings("ABABAB", "ABC")   // ""
solution.gcdOfStrings("LEET", "CODE")   // ""
solution.gcdOfStrings("EEE", "E")   // "E"
solution.gcdOfStrings("EEE", "EE")   // "E"
solution.gcdOfStrings("EEEE", "EE")   // "EE"
solution.gcdOfStrings("EEEE", "E")   // "E"
solution.gcdOfStrings("E", "EEEE")   // "E"
solution.gcdOfStrings("TAUXXTAUXXTAUXXTAUXXTAUXX", "TAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXX")   // "TAUXX"

