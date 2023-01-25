/*
 Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Example 1:
 
 Input: s = "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 
 Example 2:
 
 Input: s = "God Ding"
 Output: "doG gniD"
 
 Constraints:
 
 1 <= s.length <= 5 * 104
 s contains printable ASCII characters.
 s does not contain any leading or trailing spaces.
 There is at least one word in s.
 All the words in s are separated by a single space.
 */

class Solution {
    func reverseWords(_ s: String) -> String {
        var s = s.split(separator: " ")
        var result = ""
        
        for i in s {
            result += i.reversed() + " "
        }
        
        result.removeLast()
        return result
    }
}

let solution = Solution()
solution.reverseWords("Let's take LeetCode contest")   // "s'teL ekat edoCteeL tsetnoc"
solution.reverseWords("God Ding")   // "doG gniD"

