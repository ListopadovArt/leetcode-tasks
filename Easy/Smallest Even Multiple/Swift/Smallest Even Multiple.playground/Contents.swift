/*
 Given a positive integer n, return the smallest positive integer that is a multiple of both 2 and n.
 
 Example 1:
 Input: n = 5
 Output: 10
 Explanation: The smallest multiple of both 5 and 2 is 10.
 Example 2:
 
 Input: n = 6
 Output: 6
 Explanation: The smallest multiple of both 6 and 2 is 6. Note that a number is a multiple of itself.
 
 Constraints:
 
 1 <= n <= 150
 */

import Foundation

class Solution {
    
    // First solution
    func smallestEvenMultipleFirst(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        
        var num = n
        
        while true {
            if (num % 2 == 0) && (num % n == 0){
                break
            } else {
                num += 1
            }
        }
        return num
    }
    
    // Second solution
    func smallestEvenMultipleSecond(_ n: Int) -> Int {
        (n % 2 == 0) ? n : n * 2
    }
}

let solution = Solution()
solution.smallestEvenMultipleFirst(5)   // 10
solution.smallestEvenMultipleFirst(6)   // 6
solution.smallestEvenMultipleFirst(17)   // 34

solution.smallestEvenMultipleSecond(5)   // 10
solution.smallestEvenMultipleSecond(6)   // 6
solution.smallestEvenMultipleSecond(17)   // 34
