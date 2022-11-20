import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
print(input[1] * 2 - input[0])
