import Foundation

func solution() {
    var r: Double = 0, g: Double = 0, b: Double = 0
    for _ in 0..<10 {
        let input = readLine()!.split(separator: " ").map { Double($0)! }
        r += input[0]
        g += input[1]
        b += input[2]
    }
    print(Int((r / 10).rounded()), Int((g / 10).rounded()), Int((b / 10).rounded()))
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
