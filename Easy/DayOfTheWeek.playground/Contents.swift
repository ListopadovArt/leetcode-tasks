
/*
 Given a date, return the corresponding day of the week for that date.
 
 The input is given as three integers representing the day, month and year respectively.
 
 Return the answer as one of the following values {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}.
 
 
 Example 1:
 
 Input: day = 31, month = 8, year = 2019
 Output: "Saturday"
 Example 2:
 
 Input: day = 18, month = 7, year = 1999
 Output: "Sunday"
 Example 3:
 
 Input: day = 15, month = 8, year = 1993
 Output: "Sunday"
 
 
 Constraints:
 
 The given dates are valid dates between the years 1971 and 2100.
 */

import Foundation

class Solution {
    
    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
        let formatter  = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let today = "\(year)-"+"\(month)-"+"\(day)"
        
        if let todayDate = formatter.date(from: today) {
            let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
            let myComponents = myCalendar.components(.weekday, from: todayDate)
            let weekDay = myComponents.weekday
            switch weekDay {
            case 1:
                return "Sunday"
            case 2:
                return "Monday"
            case 3:
                return "Tuesday"
            case 4:
                return "Wednesday"
            case 5:
                return "Thursday"
            case 6:
                return "Friday"
            case 7:
                return "Saturday"
            default:
                return ""
            }
        } else {
            return ""
        }
    }
}

let solution = Solution()

solution.dayOfTheWeek(31, 8, 2019)
solution.dayOfTheWeek(18, 7, 1999)
solution.dayOfTheWeek(18, 2, 1985)
