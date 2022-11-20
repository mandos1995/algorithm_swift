import Foundation
let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
var sum = 0
for i in 0..<6{
    sum += input[i]
}
print(sum * 5)
