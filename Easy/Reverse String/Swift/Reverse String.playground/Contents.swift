/*
 Write a function that reverses a string. The input string is given as an array of characters s.

 You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:

 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 
 Example 2:

 Input: s = ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
  
 Constraints:

 1 <= s.length <= 105
 s[i] is a printable ascii character.
 */

var exampleOne:[Character] = ["h","e","l","l","o"]
var exampleTwo:[Character] = ["H","a","n","n","a","h"]

class Solution {
    
    func reverseStringFirst(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1
        
        for _ in 0..<s.count / 2 {
            let temp = s[left]
            s[left] = s[right]
            s[right] = temp
            left += 1
            right -= 1
        }
    }
    
    func reverseStringSecond(_ s: inout [Character]) {
        s.reversed()
    }
}

let solution = Solution()
solution.reverseStringFirst(&exampleOne)
solution.reverseStringFirst(&exampleTwo)
exampleOne   // ["o","l","l","e","h"]
exampleTwo   // ["h","a","n","n","a","H"]

solution.reverseStringSecond(&exampleOne)
solution.reverseStringSecond(&exampleTwo)
exampleOne   // ["o","l","l","e","h"]
exampleTwo   // ["h","a","n","n","a","H"]
