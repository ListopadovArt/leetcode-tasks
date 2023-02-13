/*
 A distinct string is a string that is present only once in an array.

 Given an array of strings arr, and an integer k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty string "".

 Note that the strings are considered in the order in which they appear in the array.

 Example 1:

 Input: arr = ["d","b","c","b","c","a"], k = 2
 Output: "a"
 Explanation:
 The only distinct strings in arr are "d" and "a".
 "d" appears 1st, so it is the 1st distinct string.
 "a" appears 2nd, so it is the 2nd distinct string.
 Since k == 2, "a" is returned.

 Example 2:

 Input: arr = ["aaa","aa","a"], k = 1
 Output: "aaa"
 Explanation:
 All strings in arr are distinct, so the 1st string "aaa" is returned.
 
 Example 3:

 Input: arr = ["a","b","a"], k = 3
 Output: ""
 Explanation:
 The only distinct string is "b". Since there are fewer than 3 distinct strings, we return an empty string "".

 Constraints:

 1 <= k <= arr.length <= 1000
 1 <= arr[i].length <= 5
 arr[i] consists of lowercase English letters.
 
 https://leetcode.com/problems/kth-distinct-string-in-an-array/
 */

class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var dictionary:[String:Int] = [:]
        var result:[String] = []
        
        for a in arr {
            if dictionary[a] != nil {
                dictionary[a]! += 1
            } else {
                dictionary[a] = 1
            }
        }
        
        for a in 0..<arr.count {
            if dictionary[arr[a]] == 1 {
                result.append(arr[a])
            }
        }
        
        return result.count >= k ? result[k-1] : ""
    }
}

let solution = Solution()
solution.kthDistinct(["d","b","c","b","c","a"], 2)   // "a"
solution.kthDistinct(["aaa","aa","a"], 1)   // "aaa"
solution.kthDistinct(["a","b","a"], 3)   // ""
