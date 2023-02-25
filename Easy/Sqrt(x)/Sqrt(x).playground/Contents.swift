/*
 Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
 
 You must not use any built-in exponent function or operator.
 
 For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
 
 Example 1:
 
 Input: x = 4
 Output: 2
 Explanation: The square root of 4 is 2, so we return 2.
 
 Example 2:
 
 Input: x = 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
 
 Constraints:
 
 0 <= x <= 231 - 1
 
 https://leetcode.com/problems/sqrtx/
 */

class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 0 else {
            return 0
        }
        var x1 = Double(x) / 2
        var x2 = (x1 + (Double(x) / x1)) / 2
        
        while(abs(x1 - x2) >= 0.0000001){
            x1 = x2
            x2 = (x1 + (Double(x) / x1)) / 2
        }
        return Int(x2)
    }
}

let solution = Solution()
solution.mySqrt(4)   // 2
solution.mySqrt(8)   // 2
solution.mySqrt(0)   // 0
