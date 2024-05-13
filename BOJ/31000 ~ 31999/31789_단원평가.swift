import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]
if c == 0 {
    print(Int(sqrt(Double(a + b))))
} else {
    print(c * c - max(a, b))
}
