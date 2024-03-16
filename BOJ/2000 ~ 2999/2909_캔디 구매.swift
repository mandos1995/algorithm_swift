import Foundation

let input = readLine()!.split(separator: " ").map { Double($0)! }
let price = input[0], n = input[1]
var unit: Double = 1
for _ in 0..<Int(n) {
    unit *= 10
}
print(Int((price / unit).rounded() * unit))
