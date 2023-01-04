
/*
 You are given a 0-indexed integer array tasks, where tasks[i] represents the difficulty level of a task. In each round, you can complete either 2 or 3 tasks of the same difficulty level.
 
 Return the minimum rounds required to complete all the tasks, or -1 if it is not possible to complete all the tasks.
 
 Example 1:
 
 Input: tasks = [2,2,3,3,2,4,4,4,4,4]
 Output: 4
 Explanation: To complete all the tasks, a possible plan is:
 - In the first round, you complete 3 tasks of difficulty level 2.
 - In the second round, you complete 2 tasks of difficulty level 3.
 - In the third round, you complete 3 tasks of difficulty level 4.
 - In the fourth round, you complete 2 tasks of difficulty level 4.
 It can be shown that all the tasks cannot be completed in fewer than 4 rounds, so the answer is 4.
 Example 2:
 
 Input: tasks = [2,3,3]
 Output: -1
 Explanation: There is only 1 task of difficulty level 2, but in each round, you can only complete either 2 or 3 tasks of the same difficulty level. Hence, you cannot complete all the tasks, and the answer is -1.
 
 Constraints:
 
 1 <= tasks.length <= 105
 1 <= tasks[i] <= 109
 */

class Solution {
    func minimumRounds(_ tasks: [Int]) -> Int {
        
        var count = 0
        var dictionary: [Int:Int] = [:]
        
        for i in tasks {
            if dictionary[i] != nil {
                dictionary[i]! += 1
            } else {
                dictionary[i] = 1
            }
        }
                
        for (_,value) in dictionary {
            if value == 1 {
                return -1
            }
            count += (value - 1) / 3 + 1
        }
        
        return count
    }
}

let solution = Solution()
solution.minimumRounds([2,2,3,3,2,4,4,4,4,4])   // 4
solution.minimumRounds([2,3,3])   // -1
solution.minimumRounds([5,5,5,5])   // 2
solution.minimumRounds([7,7,7,7,7,7])   // 2
solution.minimumRounds([69,65,62,64,70,68,69,67,60,65,69,62,65,65,61,66,68,61,65,63,60,66,68,66,67,65,63,65,70,69,70,62,68,70,60,68,65,61,64,65,63,62,62,62,67,62,62,61,66,69])   // 20
