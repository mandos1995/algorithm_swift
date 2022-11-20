import Foundation
let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let left = input[0]
let rigth = input[1]

if left == 0 && rigth == 0 {
    print("Not a moose")
}else if left == rigth {
    print("Even",left * 2)
} else {
    print("Odd", max(left, rigth) * 2)
}
