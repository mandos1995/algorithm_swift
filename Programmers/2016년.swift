import Foundation
enum weekDays: Int {
case SUN,MON,TUE,WED,THU,FRI,SAT
}

func solution(_ a:Int, _ b:Int) -> String {
    let dateStr = "2016-\(a)-\(b)"
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    
    let result = dateFormatter.date(from: dateStr)!
    let weekday = Calendar.current.component(.weekday, from: result)

    return "\(weekDays(rawValue: weekday - 1)!)"
}
