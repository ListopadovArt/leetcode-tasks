/*
 You are given a positive integer num consisting of exactly four digits. Split num into two new integers new1 and new2 by using the digits found in num. Leading zeros are allowed in new1 and new2, and all the digits found in num must be used.
 
 For example, given num = 2932, you have the following digits: two 2's, one 9 and one 3. Some of the possible pairs [new1, new2] are [22, 93], [23, 92], [223, 9] and [2, 329].
 Return the minimum possible sum of new1 and new2.
 
 Example 1:
 
 Input: num = 2932
 Output: 52
 Explanation: Some possible pairs [new1, new2] are [29, 23], [223, 9], etc.
 The minimum sum can be obtained by the pair [29, 23]: 29 + 23 = 52.
 
 Example 2:
 
 Input: num = 4009
 Output: 13
 Explanation: Some possible pairs [new1, new2] are [0, 49], [490, 0], etc.
 The minimum sum can be obtained by the pair [4, 9]: 4 + 9 = 13.
 
 Constraints:
 
 1000 <= num <= 9999
 */




class Solution {
    func minimumSum(_ num: Int) -> Int {
        var result:[Int] = []
        var array:[Character] = []
        var index = 1
        
        var numArray = Array(String(num))
        
        for i in 0..<numArray.count {
            if numArray[i] != "0" {
                array.append(numArray[i])
            }
        }
        
        guard array.count > 1 else {
            return convert(array)
        }
        
        while index < array.count {
            let prefix = array.prefix(index)
            let suffix = array.suffix(array.count - index)
            
            result.append(convert(Array(prefix).sorted()) + convert(Array(suffix).sorted()))
            
            if prefix.count == suffix.count && array.count > 2 {
                var arr_1 = prefix
                var arr_2 = suffix
                
                (arr_1[0], arr_2[2]) = (arr_2[2], arr_1[0])
                
                result.append(convert(Array(arr_1).sorted()) + convert(Array(arr_2).sorted()))
            }
            
            index += 1
        }
        return result.min()!
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
solution.minimumSum(2932)   // 52
solution.minimumSum(4009)   // 13
solution.minimumSum(2687)   // 95
solution.minimumSum(1000)   // 1








