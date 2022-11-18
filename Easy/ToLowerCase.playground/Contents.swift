
/*
 Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.

 Example 1:

 Input: s = "Hello"
 Output: "hello"
 Example 2:

 Input: s = "here"
 Output: "here"
 Example 3:

 Input: s = "LOVELY"
 Output: "lovely"

 */

class Solution {
    func toLowerCase(_ s: String) -> String {
        s.lowercased()
    }
}

let solution = Solution()
solution.toLowerCase("Hello")   // "hello"
solution.toLowerCase("here")   // "hello"
solution.toLowerCase("LOVELY")   // "lovely"
