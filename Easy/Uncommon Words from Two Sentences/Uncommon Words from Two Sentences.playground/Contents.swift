/*
 A sentence is a string of single-space separated words where each word consists only of lowercase letters.
 
 A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.
 
 Given two sentences s1 and s2, return a list of all the uncommon words. You may return the answer in any order.
 
 Example 1:
 
 Input: s1 = "this apple is sweet", s2 = "this apple is sour"
 Output: ["sweet","sour"]
 
 Example 2:
 
 Input: s1 = "apple apple", s2 = "banana"
 Output: ["banana"]
 
 Constraints:
 
 1 <= s1.length, s2.length <= 200
 s1 and s2 consist of lowercase English letters and spaces.
 s1 and s2 do not have leading or trailing spaces.
 All the words in s1 and s2 are separated by a single space.
 
 https://leetcode.com/problems/uncommon-words-from-two-sentences/
 */

class Solution {
    func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        var result:[String] = []
        var words = s1.split(separator: " ") + s2.split(separator: " ")
        var dictionary:[String:Int] = [:]
        
        for i in words {
            if dictionary[String(i)] != nil {
                dictionary[String(i)]! += 1
            } else {
                dictionary[String(i)] = 1
            }
        }
        
        for (k,v) in dictionary {
            if v == 1 {
                result.append(k)
            }
        }
        
        return result
    }
}

let solution = Solution()
solution.uncommonFromSentences("this apple is sweet", "this apple is sour")   // ["sweet","sour"]
solution.uncommonFromSentences("apple apple", "banana")   // ["banana"]
