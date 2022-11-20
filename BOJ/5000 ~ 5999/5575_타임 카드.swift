import Foundation
for _ in 0..<3{
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let hour = input[0]
    let min = input[1]
    let sec = input[2]
    let outHour = input[3]
    let outMin = input[4]
    let outSec = input[5]
    let inSum = (hour * 3600) + (min * 60) + sec
    let outSum = (outHour * 3600) + (outMin * 60) + outSec
    let time = outSum - inSum
    let timeHour = time / 3600
    let timeMin = (time % 3600) / 60
    let timeSec = (time % 3600) % 60
    print(timeHour, timeMin, timeSec)
}
