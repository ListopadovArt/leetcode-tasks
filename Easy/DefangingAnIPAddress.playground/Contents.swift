
/*
 Given a valid (IPv4) IP address, return a defanged version of that IP address.
 
 A defanged IP address replaces every period "." with "[.]".
 
 
 Example 1:
 
 Input: address = "1.1.1.1"
 Output: "1[.]1[.]1[.]1"
 Example 2:
 
 Input: address = "255.100.50.0"
 Output: "255[.]100[.]50[.]0"
 */

import Foundation

class Solution {
    
    // First solution
    func defangIPaddrFirst(_ address: String) -> String {
        
        var newAdress = ""
        
        for i in address {
            if i == "." {
                newAdress.append("[.]")
            } else {
                newAdress.append(i)
            }
        }
        return newAdress
    }
    
    // Second solution
    func defangIPaddrSecond(_ address: String) -> String {
        var adress = ""
        for i in address {
            switch i {
            case ".":
                adress.append("[.]")
            default:
                adress.append(i)
            }
        }
        return adress
    }
    
    // Third solution
    func defangIPaddrThird(_ address: String) -> String {
        address.replacingOccurrences(of: ".", with: "[.]")
    }
    
    // Fourth solution
    func defangIPaddrFourth(_ address: String) -> String {
        address.components(separatedBy: ".").joined(separator: "[.]")
    }
}

let solution = Solution()

solution.defangIPaddrFirst("1.1.1.1")

solution.defangIPaddrSecond("1.1.1.1")

solution.defangIPaddrThird("1.1.1.1")

solution.defangIPaddrFourth("1.1.1.1")
