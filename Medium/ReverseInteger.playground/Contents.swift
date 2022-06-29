
/*
 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
 
 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
 
 
 Example 1:
 
 Input: x = 123
 Output: 321
 Example 2:
 
 Input: x = -123
 Output: -321
 Example 3:
 
 Input: x = 120
 Output: 21
 */

import Foundation


class Solution {
    
    // The first solution
    func reverseFirst(_ x: Int) -> Int {
        let numberString = String(x)
        var numberReverce = String(numberString.reversed())
        if x < 0 {
            numberReverce.removeLast()
        }
        
        if let num = Int32(numberReverce) {
            let result = Int(num)
            return x > 0 ? result: -result
        } else {
            return 0
        }
    }
    
    // The second solution
    func reverseSecond(_ x: Int) -> Int {
        var number = abs(x)
        var reverseNum = 0
        while number != 0 {
            reverseNum = reverseNum * 10 + number%10
            number = number/10
        }
        if reverseNum > Int32.max {
            return 0
        }
        return x > 0 ? reverseNum : -reverseNum
    }
}

let solution = Solution()
solution.reverseFirst(-123)
solution.reverseFirst(12345678901)
solution.reverseFirst(120)

solution.reverseSecond(-123)
solution.reverseSecond(12345678901)
solution.reverseSecond(120)
