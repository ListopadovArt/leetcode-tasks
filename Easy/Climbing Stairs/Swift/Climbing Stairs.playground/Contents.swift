/*
 You are climbing a staircase. It takes n steps to reach the top.
 
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 
 Example 1:
 
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 Example 2:
 
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
 
 
 Constraints:
 
 1 <= n <= 45
 */

class Solution {
    func climbStairsFirst(_ n: Int) -> Int {
        
        guard n > 3 else {
            return n
        }
        
        var prev2 = 1
        var prev1 = 2
        
        for _ in 3...n {
            let cur = prev1 + prev2
            prev2 = prev1
            prev1 = cur
        }
        
        return prev1
    }
    
    func climbStairsSecond(_ n: Int) -> Int {
        
        var array: [Int] = [1,2]
        
        if n <= 3 {
            return n
        }
        
        for i in 3...n {
            let step = array[i-2] + array[i-3]
            array.append(step)
        }
        
        return array.last ?? 0
    }
}

let solution = Solution()

solution.climbStairsFirst(1) // 1
solution.climbStairsFirst(2) // 2
solution.climbStairsFirst(3) // 3
solution.climbStairsFirst(4) // 5
solution.climbStairsFirst(5) // 8
solution.climbStairsFirst(6) // 13
solution.climbStairsFirst(7) // 21
solution.climbStairsFirst(8) // 34
solution.climbStairsFirst(10) // 89
solution.climbStairsFirst(25) // 121 393
solution.climbStairsFirst(45) // 1 836 311 903

solution.climbStairsSecond(1) // 1
solution.climbStairsSecond(2) // 2
solution.climbStairsSecond(3) // 3
solution.climbStairsSecond(4) // 5
solution.climbStairsSecond(5) // 8
solution.climbStairsSecond(6) // 13
solution.climbStairsSecond(7) // 21
solution.climbStairsSecond(8) // 34
solution.climbStairsSecond(10) // 89
solution.climbStairsSecond(25) // 121 393
solution.climbStairsSecond(45) // 1 836 311 903
