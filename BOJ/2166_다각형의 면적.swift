import Foundation
let n = Int(readLine()!)!
var coordArray: [(Double, Double)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let x = input[0], y = input[1]
    coordArray.append((x, y))
}

coordArray.append(coordArray[0])

var up: Double = 0
var down: Double = 0

for i in 0..<n {
    up += coordArray[i].0 * coordArray[i + 1].1
    down += coordArray[i].1 * coordArray[i + 1].0
}

let answer = round(abs((up - down) / 2) * 10) / 10
print(answer)
