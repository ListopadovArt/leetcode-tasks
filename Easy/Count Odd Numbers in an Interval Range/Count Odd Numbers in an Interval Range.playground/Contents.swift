/*
 Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).

 Example 1:

 Input: low = 3, high = 7
 Output: 3
 Explanation: The odd numbers between 3 and 7 are [3,5,7].

 Example 2:

 Input: low = 8, high = 10
 Output: 1
 Explanation: The odd numbers between 8 and 10 are [9].
  

 Constraints:

 0 <= low <= high <= 10^9
 
 https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/description/
 */

class Solution {
    func countOddsFirst(_ low: Int, _ high: Int) -> Int {
        var result = 0
        
        for n in low...high {
            if n % 2 != 0 {
                result += 1
            }
        }
        
        return result
    }
    
    func countOddsSecond(_ low: Int, _ high: Int) -> Int {
        var result = (high - low) / 2
        
        if low % 2 != 0 || high % 2 != 0 {
            result += 1
        }
        
        return result
    }
}

let solution = Solution()
solution.countOddsFirst(3, 7)   // 3
solution.countOddsFirst(8, 10)   // 1

solution.countOddsSecond(3, 7)   // 3
solution.countOddsSecond(8, 10)   // 1
