import Foundation
let input = readLine()!.components(separatedBy: " ").map { Double($0)! }
let area = input[0] * input[2] / input[1] / input[3] / 2.0
if area == Double(Int(area)){
    print(1)
} else {
    print(0)
}
