import Foundation

let time = readLine()!.split(separator: ":").map { Int($0)! }
let presentTime = time[0] * 3600 + time[1] * 60 + time[2]
let time2 = readLine()!.split(separator: ":").map { Int($0)! }
let missonTime = time2[0] * 3600 + time2[1] * 60 + time2[2]
var resultTime = missonTime - presentTime
if resultTime < 0 {
    resultTime += 86400
}
let hour = String(format: "%02d", resultTime / 3600)
let min = String(format: "%02d", (resultTime % 3600) / 60)
let sec = String(format: "%02d", (resultTime % 3600) % 60)

print("\(hour):\(min):\(sec)")
