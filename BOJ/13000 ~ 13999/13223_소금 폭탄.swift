import Foundation

func timeToSec(_ time: [Int]) -> Int { time[0] * 3600 + time[1] * 60 + time[2] }
func secToTime(_ sec: Int) -> String {
    let hour = sec / 3600
    let min = (sec % 3600) / 60
    let sec = sec % 60
    
    return String(format: "%02d:%02d:%02d", hour, min, sec)
}

let time1 = timeToSec(readLine()!.split(separator: ":").map { Int($0)! })
let time2 = timeToSec(readLine()!.split(separator: ":").map { Int($0)! })

if time1 >= time2 {
    print(secToTime(time2 - time1 + 86400))
} else {
    print(secToTime(time2 - time1))
}
