import Foundation

for _ in 0..<Int(readLine()!)! { 
    let input = readLine()!.split { $0 == " " }.map { Double($0)! }
    let input2 = readLine()!.split { $0 == " " }.map { Double($0)! }
    let a = input[0], p1 = input[1]
    let b = input[1], p2 = input[2]
    if a / p1 < Double.pi * b * b / p2 { 
        print("Whole pizza")
    } else {
        print("Slice of pizza")
    }
}
