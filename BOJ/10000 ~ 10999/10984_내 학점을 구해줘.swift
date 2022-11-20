import Foundation
let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    var c: [Int] = []
    var g: [Double] = []
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Double($0)! }
        c.append(Int(input[0]))
        g.append(input[0] * input[1])
    }
    let sumOfC = c.reduce(0) {
        $0 + $1
    }
    let avg = g.reduce(0, +) / Double(sumOfC)
    print(sumOfC, round(avg * 10) / 10)
}
