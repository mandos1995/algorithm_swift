let dm = readLine()!.split(separator: " ").map { Int($0)! }
let d = dm[0], m = dm[1]

func getDayOfWeek(_ year: Int, _ month: Int, _ day: Int) -> String {
    let weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    let a = (14 - month) / 12
    let y = year - a
    let m = month + 12 * a - 2
    
    let dayOfWeek = (day + y + y / 4 - y / 100 + y / 400 + (31 * m) / 12) % 7
    let weekdayIndex = (dayOfWeek >= 0 ? dayOfWeek : dayOfWeek + 7)
  
    return weekdays[weekdayIndex]
}

print(getDayOfWeek(2009, m, d))
