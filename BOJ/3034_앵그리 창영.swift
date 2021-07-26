import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
let length = sqrt(input[1] * input[1] + input[2] * input[2])
for _ in 0..<Int(input[0]) {
    let match = Double(readLine()!)!
    if match <= length {
        print("DA")
    } else {
        print("NE")
    }
}
