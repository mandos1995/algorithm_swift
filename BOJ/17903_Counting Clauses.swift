import Foundation
var input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0]
let n = input[1]

for _ in 0..<m{
    readLine()!.split(separator: " ").map { Int($0)! }
}

if m < 8 {
    print("unsatisfactory")
} else {
    print("satisfactory")
}
