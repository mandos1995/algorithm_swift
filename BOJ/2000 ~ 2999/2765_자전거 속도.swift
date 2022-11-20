import Foundation
var i = 0
while true {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    if input[1] == 0 {
        break
    }
    i += 1
    let diameter = input[0], turns = input[1], sec = input[2]
    let distance = round(diameter * turns * 3.1415927 / 63360 * 100) / 100
    let hour = sec / 3600
    let milisPerHour = round(diameter * turns * 3.1415927 / 63360 / hour * 100) / 100
    print("Trip #\(i): \(String(format: "%.2f", distance)) \(String(format: "%.2f", milisPerHour))")
    
}
