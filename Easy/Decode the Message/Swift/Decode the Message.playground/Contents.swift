/*
 ou are given the strings key and message, which represent a cipher key and a secret message, respectively. The steps to decode message are as follows:

 Use the first appearance of all 26 lowercase English letters in key as the order of the substitution table.
 Align the substitution table with the regular English alphabet.
 Each letter in message is then substituted using the table.
 Spaces ' ' are transformed to themselves.
 For example, given key = "happy boy" (actual key would have at least one instance of each letter in the alphabet), we have the partial substitution table of ('h' -> 'a', 'a' -> 'b', 'p' -> 'c', 'y' -> 'd', 'b' -> 'e', 'o' -> 'f').
 Return the decoded message.

 Example 1:

 Input: key = "the quick brown fox jumps over the lazy dog", message = "vkbs bs t suepuv"
 Output: "this is a secret"
 Explanation: The diagram above shows the substitution table.
 It is obtained by taking the first appearance of each letter in "the quick brown fox jumps over the lazy dog".
 
 Example 2:

 Input: key = "eljuxhpwnyrdgtqkviszcfmabo", message = "zwx hnfx lqantp mnoeius ycgk vcnjrdb"
 Output: "the five boxing wizards jump quickly"
 Explanation: The diagram above shows the substitution table.
 It is obtained by taking the first appearance of each letter in "eljuxhpwnyrdgtqkviszcfmabo".

 Constraints:

 26 <= key.length <= 2000
 key consists of lowercase English letters and ' '.
 key contains every letter in the English alphabet ('a' to 'z') at least once.
 1 <= message.length <= 2000
 message consists of lowercase English letters and ' '.
 */

import Foundation

class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        let key = Array(key.replacingOccurrences(of: " ", with: ""))
        var message = Array(message)
        var resultKeyArray: [String] = []
        let alphabet: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        var dictionary: [String:String] = [:]
        var result = ""
     
        for i in key {
            if !resultKeyArray.contains(String(i)) {
                resultKeyArray.append(String(i))
            }
        }
                
        for (index, letter) in resultKeyArray.enumerated() {
            dictionary[letter] = alphabet[index]
        }
      
        for i in message {
            if i != " " {
                result.append(dictionary[String(i)]!)
            } else {
                result.append(" ")
            }
        }
        return result
    }
}

let solution = Solution()
solution.decodeMessage("the quick brown fox jumps over the lazy dog", "vkbs bs t suepuv")   // "this is a secret"
solution.decodeMessage("eljuxhpwnyrdgtqkviszcfmabo", "zwx hnfx lqantp mnoeius ycgk vcnjrdb")   // "the five boxing wizards jump quickly"

