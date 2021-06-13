import Foundation
let input = readLine()!.split(separator: " ").map{ Double($0)! }
var sum = 0
for i in 0..<input.count{
    sum += Int(pow(input[i], 2))
}
print(sum % 10)
