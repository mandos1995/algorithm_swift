import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let num = input[0], newNum = Int(String(input[1]) + String(input[0]))!

var array = [Bool](repeating: true, count: newNum + 1)

for i in 2..<Int(sqrt(Double(newNum)) + 1) {
    if array[i] {
        var j = 2
        while i * j <= newNum {
            array[i * j] = false
            j += 1
        }
    }
}

if array[num] && array[newNum] {
    print("Yes")
} else {
    print("No")
}
