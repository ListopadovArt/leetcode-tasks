/*
 You are given a string s and an integer array indices of the same length. The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
 
 Return the shuffled string.
 
 */

// O(n) + O(n) -> 2O(n) -> O(n)

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        guard s.count == indices.count else {
            return ""
        }
        
        var array = Array(s)
        var dict = [Int : Character]()
        var index = 0
        var result = [Character]()
        
        // O(n)
        indices.map{
            dict[$0] = array[index]
            index += 1
        }
        
        // O(n)
        (0...s.count - 1).map{
            result.append(dict[$0]!)
        }
        
        return String(result)
    }
}

let solution = Solution()
solution.restoreString("codeleet", [4,5,6,7,0,2,1,3])   // "leetcode"
solution.restoreString("abc", [0,1,2])   // "abc"
