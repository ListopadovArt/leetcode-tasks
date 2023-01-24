/*
 You are given a positive integer num consisting only of digits 6 and 9.

 Return the maximum number you can get by changing at most one digit (6 becomes 9, and 9 becomes 6).

 Example 1:

 Input: num = 9669
 Output: 9969
 Explanation:
 Changing the first digit results in 6669.
 Changing the second digit results in 9969.
 Changing the third digit results in 9699.
 Changing the fourth digit results in 9666.
 The maximum number is 9969.
 
 Example 2:

 Input: num = 9996
 Output: 9999
 Explanation: Changing the last digit 6 to 9 results in the maximum number.
 
 Example 3:

 Input: num = 9999
 Output: 9999
 Explanation: It is better not to apply any change.
  
 Constraints:

 1 <= num <= 104
 num consists of only 6 and 9 digits.
 */

class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var result:[Int] = [num]

        var numArray = Array(String(num))
        
        for i in 0..<numArray.count {
         
            if numArray[i] == "6" {
                numArray[i] = "9"
                result.append(convert(numArray))
                numArray[i] = "6"
            }
            
            if numArray[i] == "9" {
                numArray[i] = "6"
                result.append(convert(numArray))
                numArray[i] = "9"
            }
        }
        
        return result.max()!
    }
    
    private func convert(_ array: [Character]) -> Int {
       var number = ""
        for i in array {
            number.append(i)
        }
        return Int(number)!
    }
}

let solution = Solution()
solution.maximum69Number(9669)   // 9969
solution.maximum69Number(9996)   // 9999
solution.maximum69Number(9999)   // 9999
