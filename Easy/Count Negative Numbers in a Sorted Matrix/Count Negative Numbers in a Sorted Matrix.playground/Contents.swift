/*
 Given a m x n matrix grid which is sorted in non-increasing order both row-wise and column-wise, return the number of negative numbers in grid.
  
 Example 1:

 Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
 Output: 8
 Explanation: There are 8 negatives number in the matrix.
 
 Example 2:

 Input: grid = [[3,2],[1,0]]
 Output: 0

 Constraints:

 m == grid.length
 n == grid[i].length
 1 <= m, n <= 100
 -100 <= grid[i][j] <= 100
 
 https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/description/
 */

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count = 0
        var array:[Int] = []
        
        for g in grid {
            array += g
        }
        
        for i in array {
            if i < 0 {
                count += 1
            }
        }
        
        return count
    }
}

let solution = Solution()
solution.countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])   // 8
solution.countNegatives([[3,2],[1,0]])   // 0
