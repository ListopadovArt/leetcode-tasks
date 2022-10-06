
/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
 
 
 Example 1:
 
 Input: s = "()"
 Output: true
 Example 2:
 
 Input: s = "()[]{}"
 Output: true
 Example 3:
 
 Input: s = "(]"
 Output: false
 
 
 Constraints:
 
 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 */

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var st = [Character]()
        
        for i in s {
            switch i {
            case "{", "(", "[":
                st.append(i)
            case "}":
                if (st.isEmpty || (st.last != "{")) {
                    return false
                }
                st.popLast()
            case ")":
                if (st.isEmpty || (st.last != "(")) {
                    return false;
                }
                st.popLast()
            case "]":
                if (st.isEmpty || (st.last != "[")) {
                    return false;
                }
                st.popLast()
            default:
                print("breaking \(i)")
            }
        }
        return st.isEmpty ? true : false
    }
}

let solution = Solution()
solution.isValid("(")
solution.isValid(")")
solution.isValid("(()")
solution.isValid(")()())")
solution.isValid("")
solution.isValid("()(())")
solution.isValid("([)]")
solution.isValid("()[]{}")

