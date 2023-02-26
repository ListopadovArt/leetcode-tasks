/*
 Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
 
 Example 1:
 
 Input: s = "leetcode"
 Output: 0
 
 Example 2:
 
 Input: s = "loveleetcode"
 Output: 2
 Example 3:
 
 Input: s = "aabb"
 Output: -1
 
 Constraints:
 
 1 <= s.length <= 105
 s consists of only lowercase English letters.
 
 https://leetcode.com/problems/first-unique-character-in-a-string/
 */

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dictionary:[Character:Int] = [:]
        
        for i in s {
            if dictionary[i] != nil {
                dictionary[i]! += 1
            } else {
                dictionary[i] = 1
            }
        }
        
        for (k,v) in s.enumerated() {
            if dictionary[v] == 1 {
                return k
            }
        }
        
        return -1
    }
}

let solution = Solution()
solution.firstUniqChar("leetcode")   // 0
solution.firstUniqChar("loveleetcode")   // 2
solution.firstUniqChar("aabb")   // -1

