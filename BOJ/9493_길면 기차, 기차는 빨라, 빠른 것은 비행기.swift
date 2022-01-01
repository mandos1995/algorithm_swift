import Foundation
while true {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    if input[0] == 0 && input[1] == 0 && input[2] == 0 {
        break
    } else {
        let time = Int(round((input[0] / input[1] * 3600) - (input[0] / input[2] * 3600)))
        let hour = time / 3600
        let min = String(format: "%02d", (time % 3600) / 60)
        let sec = String(format: "%02d", (time % 3600) % 60)
        print("\(hour):\(min):\(sec)")
    }
}
