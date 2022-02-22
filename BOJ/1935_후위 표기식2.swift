import Foundation
let n = Int(readLine()!)!
let string = readLine()!
var nums = [Double](repeating: 0, count: 26)
var stack: [Double] = []
for i in 0..<n {
    let num = Double(readLine()!)!
    nums[i] = num
}

for str in string {
    switch str {
    case "+":
        let result = stack.removeLast() + stack.removeLast()
        stack.append(result)
    case "-":
        let a = stack.removeLast()
        let b = stack.removeLast()
        let result = b - a
        stack.append(result)
    case "*":
        let result = stack.removeLast() * stack.removeLast()
        stack.append(result)
    case "/":
        let a = stack.removeLast()
        let b = stack.removeLast()
        let result = b / a
        stack.append(result)
    default:
        stack.append(nums[Int(str.asciiValue! - 65)])
    }
}

print(String(format: "%.2f", stack[0]))
