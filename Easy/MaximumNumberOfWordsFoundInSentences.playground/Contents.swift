
/*
 A sentence is a list of words that are separated by a single space with no leading or trailing spaces.

 You are given an array of strings sentences, where each sentences[i] represents a single sentence.

 Return the maximum number of words that appear in a single sentence.


 Example 1:

 Input: sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"]
 Output: 6
 Explanation:
 - The first sentence, "alice and bob love leetcode", has 5 words in total.
 - The second sentence, "i think so too", has 4 words in total.
 - The third sentence, "this is great thanks very much", has 6 words in total.
 Thus, the maximum number of words in a single sentence comes from the third sentence, which has 6 words.
 Example 2:

 Input: sentences = ["please wait", "continue to fight", "continue to win"]
 Output: 3
 Explanation: It is possible that multiple sentences contain the same number of words.
 In this example, the second and third sentences (underlined) have the same number of words.
 */

import Foundation

class Solution {
    
    // First solution
    func mostWordsFoundFirst(_ sentences: [String]) -> Int {
        
        var array = [Int]()
        
        for index in sentences {
            let components = index.components(separatedBy: .whitespacesAndNewlines)
            let words = components.filter { !$0.isEmpty }
            let numberOfWords = words.count
            array.append(numberOfWords)
        }
        guard let max = array.max() else {
            return 0
        }
        return max
    }
    
    // Second solution
    func mostWordsFoundSecond(_ sentences: [String]) -> Int {
        (sentences.map { !$0.split(separator: " ").isEmpty ? $0.split(separator: " ").count : 0 }).max()!
    }
    
    // Third solution
    func mostWordsFoundThird(_ sentences: [String]) -> Int {
        
        var array = [Int]()
        for index in sentences {
            let words =  index.split { !$0.isLetter }
            array.append(words.count)
        }
        guard let max = array.max() else {
            return 0
        }
        return max
    }
    
}

let solution = Solution()
solution.mostWordsFoundFirst(["alice and bob love leetcode"])
solution.mostWordsFoundFirst(["alice and bob love leetcode", "i think so too", "this is great thanks very much"])

solution.mostWordsFoundSecond(["alice and bob love leetcode"])
solution.mostWordsFoundSecond(["alice and bob love leetcode", "i think so too", "this is great thanks very much"])

solution.mostWordsFoundThird(["alice and bob love leetcode"])
solution.mostWordsFoundThird(["alice and bob love leetcode", "i think so too", "this is great thanks very much"])
