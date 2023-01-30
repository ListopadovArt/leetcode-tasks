/*
 The Tribonacci sequence Tn is defined as follows:
 
 T0 = 0, T1 = 1, T2 = 1, and Tn+3 = Tn + Tn+1 + Tn+2 for n >= 0.
 
 Given n, return the value of Tn.
 
 Example 1:
 
 Input: n = 4
 Output: 4
 Explanation:
 T_3 = 0 + 1 + 1 = 2
 T_4 = 1 + 1 + 2 = 4
 
 Example 2:
 
 Input: n = 25
 Output: 1389537
 
 Constraints:
 
 0 <= n <= 37
 The answer is guaranteed to fit within a 32-bit integer, ie. answer <= 2^31 - 1.
 */

class Solution {
    func tribonacci(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        guard n > 2 else {
            return 1
        }
        var a = 0
        var b = 1
        var c = 1
        var result = 0
        for _ in 3...n {
            result = a + b + c
            a = b
            b = c
            c = result
        }
        return result
    }
}

let solution = Solution()
solution.tribonacci(4)   // 4
solution.tribonacci(25)   // 1389537
solution.tribonacci(5)   // 7
solution.tribonacci(2)   // 1
solution.tribonacci(0)   // 0
solution.tribonacci(1)   // 1

