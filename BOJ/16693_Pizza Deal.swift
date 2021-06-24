import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
let input2 = readLine()!.split(separator: " ").map { Double($0)! }
let a1 = input[0]
let p1 = input[1]
let r1 = input2[0]
let p2 = input2[1]

if a1 / p1 > (Double.pi * r1 * r1) / p2 {
    print("Slice of pizza")
} else {
    print("Whole pizza")
}
