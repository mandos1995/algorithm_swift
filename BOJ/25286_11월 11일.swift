func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let year = input[0], month = input[1]
    switch month {
    case 1:
        print(year - 1, 12, 31)
    case 3:
        if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
            print(year, month - 1, 29)
        } else {
            print(year, month - 1, 28)
        }
    case 2, 4, 6, 8, 9, 11:
        print(year, month - 1, 31)
    case 5, 7, 10, 12:
        print(year, month - 1, 30)
    default:
        return
    }
    
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
