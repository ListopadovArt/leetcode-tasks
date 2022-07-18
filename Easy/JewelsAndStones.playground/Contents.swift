
/*
 You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
 
 Letters are case sensitive, so "a" is considered a different type of stone from "A".
 
 
 Example 1:
 
 Input: jewels = "aA", stones = "aAAbbbb"
 Output: 3
 Example 2:
 
 Input: jewels = "z", stones = "ZZ"
 Output: 0
 
 
 Constraints:
 
 1 <= jewels.length, stones.length <= 50
 jewels and stones consist of only English letters.
 All the characters of jewels are unique.
 */

import Foundation

class Solution {
    
    // The first solution
    func numJewelsInStonesFirst(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        
        for stone in stones {
            for jewel in jewels {
                if stone == jewel {
                    result += 1
                }
            }
        }
        return result
    }
    
    // The second solution
    func numJewelsInStonesSecond(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        
        for stone in stones {
            if jewels.contains(stone) {
                result += 1
            }
        }
        return result
    }
    
    // The third solution
    func numJewelsInStonesThird(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        
        stones.forEach { stone in
            if jewels.contains(stone) {
                result += 1
            }
        }
        return result
    }
    
    // The fourth solution
    func numJewelsInStonesFourth(_ jewels: String, _ stones: String) -> Int {
        stones.map({jewels.contains($0) ? 1: 0}).reduce(0,+)
    }
}

let solution = Solution()

solution.numJewelsInStonesFirst("aA", "AAAaaa")
solution.numJewelsInStonesFirst("z", "ZZ")

solution.numJewelsInStonesSecond("aA", "AAAaaa")
solution.numJewelsInStonesSecond("z", "ZZ")

solution.numJewelsInStonesThird("aA", "AAAaaa")
solution.numJewelsInStonesThird("z", "ZZ")

solution.numJewelsInStonesFourth("aA", "AAAaaa")
solution.numJewelsInStonesFourth("z", "ZZ")
