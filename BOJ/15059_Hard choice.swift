import Foundation
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let input2 = readLine()!.split(separator: " ").map{ Int($0)! }
var num = 0
for i in 0..<3{
    if input2[i] > input[i]{
        num += input2[i] - input[i]
    }
}
print(num)
