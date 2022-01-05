let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let day = input[0]
    let month = input[1]
    let year = input[2]
    
    if day == 0 && month == 0 && year == 0 {
        break
    }
    var result = 0
    
    for i in 0..<month - 1 {
        result += days[i]
    }
    
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
        if month > 2 {
            result += day + 1
        } else {
            result += day
        }
    } else {
        result += day
    }
    print(result)
}
