import Foundation
var input = readLine()!.split(separator: " ").map { Int($0)! }
input = input.sorted()
for i in 0..<input.count{
    print(input[i],terminator: " ")
}
