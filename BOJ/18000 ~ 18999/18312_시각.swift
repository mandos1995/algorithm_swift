import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var hour = 0
var min = 0
var sec = 0
var answer = 0
while !(hour == n && min == 59 && sec == 59) {
    if String(format: "%02d", hour).contains("\(k)") || String(format: "%02d", min).contains("\(k)") || String(format: "%02d", sec).contains("\(k)") {
        answer += 1
    }
    
    if sec == 59 {
        if min == 59 {
            hour += 1
            sec = 0
            min = 0
        } else {
            min += 1
            sec = 0
        }
    } else {
        sec += 1
    }
    
}
if "\(String(format: "%02d", hour))5959".contains("\(k)") {
    answer += 1
}

print(answer)
