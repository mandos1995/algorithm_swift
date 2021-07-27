import Foundation
let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let sum = input[0] * 350.34 + input[1] * 230.9 + input[2] * 190.55 + input[3] * 125.3 + input[4] * 180.9
    print("$",terminator: "")
    print(String(format: "%.2f", sum))
}
