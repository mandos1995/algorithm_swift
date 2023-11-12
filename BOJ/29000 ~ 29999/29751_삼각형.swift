import Foundation

let input = readLine()!.split(separator: " ").map { Double($0)! }
let w = input[0], h = input[1]
let area = w * h / 2
print(String(format: "%.1f", area))
