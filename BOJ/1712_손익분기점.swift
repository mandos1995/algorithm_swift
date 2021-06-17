import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }

if input[1] >= input[2]{
    print(-1)
} else {
    print(input[0] / (input[2]-input[1]) + 1)
}
