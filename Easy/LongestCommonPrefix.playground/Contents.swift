/*
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

  

 Example 1:

 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
  

 Constraints:

 1 <= strs.length <= 200
 0 <= strs[i].length <= 200
 strs[i] consists of only lowercase English letters.
 */

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else {
            return ""
        }
        
        var prefix = strs[0]
        
        if strs.count == 1 {
            return prefix
        } else {
            strs.sorted()
                        
            for i in 0..<strs.count {
                while strs[i].hasPrefix(prefix) == false {
                    prefix = String(prefix[..<prefix.index(before: prefix.endIndex)])
                    if prefix.isEmpty {
                        return ""
                    }
                }
            }
            return prefix
        }
    }
}

let solution = Solution()
solution.longestCommonPrefix(["flower","flow","flight"])
solution.longestCommonPrefix(["dog","racecar","car"])
solution.longestCommonPrefix([])


