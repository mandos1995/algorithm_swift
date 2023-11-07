import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let time = readLine()!.split(separator: ":").map { convert(String(Int($0)!, radix: 2)) }
    print(getRow(time), time.reduce("", +))
}

func convert(_ str: String) -> String {
    let diff = 6 - str.count
    return String(repeating: "0", count: diff) + str
}

func getRow(_ time: [String]) -> String {
    var answer = ""
    for j in 0..<6 {
        for i in 0..<3 {
            answer += time[i].map { String($0) }[j]
        }
    }
    return answer
}
