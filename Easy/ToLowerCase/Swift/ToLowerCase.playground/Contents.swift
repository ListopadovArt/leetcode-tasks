
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
    // First solution
    func toLowerCaseFirst(_ s: String) -> String {
        s.lowercased()
    }
    
    // Second solution
    func toLowerCaseSecond(_ s: String) -> String {
        var result = ""
        for i in s {
            if let char = i.asciiValue, "A" <= i && i <= "Z" {
                result.append(Character(UnicodeScalar(char + 32)))
            } else {
                result.append(i)
            }
        }
        return result
    }
}

let solution = Solution()
solution.toLowerCaseFirst("Hello")   // "hello"
solution.toLowerCaseFirst("here")   // "here"
solution.toLowerCaseFirst("LOVELY")   // "lovely"

solution.toLowerCaseSecond("Hello")   // "hello"
solution.toLowerCaseSecond("here")   // "here"
solution.toLowerCaseSecond("LOVELY")   // "lovely"
