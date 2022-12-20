import Foundation

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0] * 15, b = input[1] * 20, c = input[2] * 25
    let otherSum = a + b + c
    let final = (9000 - otherSum) % 40 == 0 ? (9000 - otherSum) / 40 : (9000 - otherSum) / 40 + 1
    
    if final > 100 {
        print("impossible")
    } else {
        print(final)
    }
}

let n = Int(readLine()!)!

for _ in 0..<n {
    solution()
}
