import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
let max = input.max()!
for i in input{
    if max > i {
        count = count + (max - i)
    }
}
print(count)
