/*
 A self-dividing number is a number that is divisible by every digit it contains.

 For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
 A self-dividing number is not allowed to contain the digit zero.

 Given two integers left and right, return a list of all the self-dividing numbers in the range [left, right].

 Example 1:

 Input: left = 1, right = 22
 Output: [1,2,3,4,5,6,7,8,9,11,12,15,22]

 Example 2:

 Input: left = 47, right = 85
 Output: [48,55,66,77]

 Constraints:

 1 <= left <= right <= 104
 
 https://leetcode.com/problems/self-dividing-numbers/
 */

class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result:[Int] = []
        
        for num in left...right {
           var number = num
            while number != 0 {
                let n = number % 10
                if n == 0 || num % n != 0 {
                    break
                }
                number /= 10
            }
            
            if number == 0 {
                result.append(num)
            }
        }
        
        return result
    }
}

let solution = Solution()
solution.selfDividingNumbers(10, 15)   // [11,12,15]
solution.selfDividingNumbers(1, 22)   // [1,2,3,4,5,6,7,8,9,11,12,15,22]
solution.selfDividingNumbers(47, 85)   // [48,55,66,77]

