/*
 
 */

class Solution {
    
    // First solution
    func differenceOfSumFirst(_ nums: [Int]) -> Int {
        var elementSum = 0
        var elementDigit = 0
        
        nums.map{elementSum += $0}
        nums.map{elementDigit += Int(String($0).compactMap{$0.wholeNumberValue}.reduce(0, +))}
        
        return abs(elementSum - elementDigit)
    }
    
    // Second solution
    func differenceOfSumSecond(_ nums: [Int]) -> Int {
        var elementSum = 0
        var elementDigit = 0
        
        for i in nums {
            elementSum += i
            elementDigit += digitSum(of: i)
        }
        return abs(elementSum - elementDigit)
    }
    
    func digitSum(of number: Int) -> Int {
        if(number < 10) {
            return number
        } else {
            return (number % 10) + digitSum(of: (number/10))
        }
    }
    
}

let solution = Solution()
solution.differenceOfSumFirst([1,15,6,3])   // 9
solution.differenceOfSumFirst([1,2,3,4])   // 0

solution.differenceOfSumSecond([1,15,6,3])   // 9
solution.differenceOfSumSecond([1,2,3,4])   // 0
