import Foundation
let n = Int(readLine()!)!

for _ in 0..<n {
    var str = ""
    var count: Double = 0
    while true {
        let input = readLine()!
        if input.isEmpty {
            break
        }
        str += input
    }
    for s in str {
        if s != "#" {
            count += 1
        }
    }
    let answer = round((count / Double(str.count) * 100) * 10) / 10
    if answer == Double(Int(answer)) {
        print("Efficiency ratio is \(Int(answer))%.")
    } else {
        print("Efficiency ratio is \(answer)%.")
    }
}
