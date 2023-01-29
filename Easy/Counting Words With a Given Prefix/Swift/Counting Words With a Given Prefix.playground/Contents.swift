/*
 You are given an array of strings words and a string pref.

 Return the number of strings in words that contain pref as a prefix.

 A prefix of a string s is any leading contiguous substring of s.


 Example 1:

 Input: words = ["pay","attention","practice","attend"], pref = "at"
 Output: 2
 Explanation: The 2 strings that contain "at" as a prefix are: "attention" and "attend".
 
 Example 2:

 Input: words = ["leetcode","win","loops","success"], pref = "code"
 Output: 0
 Explanation: There are no strings that contain "code" as a prefix.

 Constraints:

 1 <= words.length <= 100
 1 <= words[i].length, pref.length <= 100
 words[i] and pref consist of lowercase English letters.
 */

class Solution {
    // First solution
    func prefixCountFirst(_ words: [String], _ pref: String) -> Int {
        var count = 0
        
        for word in words {
            if word.prefix(pref.count) == pref {
                count += 1
            }
        }
        return count
    }
    
    // Second solution
    func prefixCountSecond(_ words: [String], _ pref: String) -> Int {
        words.filter{$0.hasPrefix(pref)}.count
    }
}

let solution = Solution()
solution.prefixCountFirst(["pay","attention","practice","attend"], "at")   // 2
solution.prefixCountFirst(["leetcode","win","loops","success"], "code")   // 0

solution.prefixCountSecond(["pay","attention","practice","attend"], "at")   // 2
solution.prefixCountSecond(["leetcode","win","loops","success"], "code")   // 0
