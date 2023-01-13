import Foundation

while let input = readLine()?.split(separator: " "), input != ["00:00", "00:00"] {
    let startTime = input[0].split(separator: ":").map { Int($0)! }
    let startTotalTime = startTime[0] * 60 + startTime[1]
    let endTime = input[1].split(separator: ":").map { Int($0)! }
    let endTotalTime = endTime[0] * 60 + endTime[1]
    let totalTime = startTotalTime + endTotalTime
    print(minConvertToDayHourMin(min: totalTime))
}

func minConvertToDayHourMin(min: Int) -> String {
    let day = min / 1440
    let min = min % 1440
    var answer = "\(String(format: "%02d", min / 60)):\(String(format: "%02d", min % 60))"
    answer += day > 0 ? " +\(day)" : ""
    return answer
}
