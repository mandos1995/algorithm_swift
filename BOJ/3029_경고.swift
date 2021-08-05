let startTime = readLine()!.split(separator: ":").map { String($0) }
let startHour = Int(startTime[0])!
let startMin = Int(startTime[1]) ?? 0
let startSec = Int(startTime[2]) ?? 0

let endTime = readLine()!.split(separator: ":").map { String($0) }
let endHour = Int(endTime[0])!
let endMin = Int(endTime[1]) ?? 0
let endSec = Int(endTime[2]) ?? 0

var startAllTime = startHour * 3600 + startMin * 60 + startSec
var endAllTime = endHour * 3600 + endMin * 60 + endSec

if endAllTime < startAllTime {
    endAllTime += 24 * 3600
}

let boomTime = endAllTime - startAllTime
let boomHour = String(boomTime/3600)
let boomMin = String(boomTime % 3600 / 60)
let boomSec = String(boomTime % 3600 % 60)
func frontZero(_ time: String) -> String {
    if time.count == 1 {
        return "0" + time
    } else {
        return time
    }
}
if boomHour == "0" && boomMin == "0" && boomSec == "0" {
    print("24:00:00")
} else {
    print(frontZero(boomHour), frontZero(boomMin), frontZero(boomSec), separator: ":")
}
