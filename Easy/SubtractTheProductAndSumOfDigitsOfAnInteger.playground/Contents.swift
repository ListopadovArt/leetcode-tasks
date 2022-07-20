
/*
 Given an integer number n, return the difference between the product of its digits and the sum of its digits.
  
 Example 1:

 Input: n = 234
 Output: 15
 Explanation:
 Product of digits = 2 * 3 * 4 = 24
 Sum of digits = 2 + 3 + 4 = 9
 Result = 24 - 9 = 15
 Example 2:

 Input: n = 4421
 Output: 21
 Explanation:
 Product of digits = 4 * 4 * 2 * 1 = 32
 Sum of digits = 4 + 4 + 2 + 1 = 11
 Result = 32 - 11 = 21
  

 Constraints:

 1 <= n <= 10^5
 */

import Foundation

class Solution {
    
    func subtractProductAndSum(_ n: Int) -> Int {
        multiply(number: n) - amount(number: n)
    }
    
    func multiply(number: Int) -> Int {
        var digits = 1
        var number = number
        while number > 0 {
            digits *= number % 10
            number /= 10
           }
        return digits
    }
    
    func amount(number: Int) -> Int {
        var amount = 0
        var number = number
        while number > 0 {
            amount += number % 10
            number /= 10
           }
        return amount
    }
}

let solution = Solution()

solution.subtractProductAndSum(234)
solution.subtractProductAndSum(4421)
