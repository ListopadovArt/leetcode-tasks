
/*
 Given two integers a and b, return the sum of the two integers without using the operators + and -.
 
 
 Example 1:
 
 Input: a = 1, b = 2
 Output: 3
 Example 2:
 
 Input: a = 2, b = 3
 Output: 5
 
 
 Constraints:
 
 -1000 <= a, b <= 1000
 */

import Foundation

class Solution {
    
    func getSumFirst(_ a: Int, _ b: Int) -> Int {
        let range = -1000...1000
        if  range.contains(a) && range.contains(b) {
            return a + b
        } else {
            return 0
        }
    }
    
    func getSumSecond(_ a: Int, _ b: Int) -> Int {
        
        if a <= 1000 && a >= -1000 {
            if b <= 1000 && b >= -1000 {
                return a + b
            }
        }
        return 0
    }
}

let solution = Solution()

solution.getSumFirst(10, 3)
solution.getSumFirst(7, -3)
solution.getSumFirst(-2147483648, -1)

solution.getSumSecond(10, 3)
solution.getSumSecond(7, -3)
solution.getSumSecond(-2147483648, -1)
