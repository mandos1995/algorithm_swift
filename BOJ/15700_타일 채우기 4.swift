import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let area = input[0] * input[1]
print(area / 2)
