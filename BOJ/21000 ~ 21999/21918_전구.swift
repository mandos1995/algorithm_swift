import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var isOn = readLine()!.split(separator: " ").map { Int($0)! != 0 }
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1] - 1, c = input[2] - 1
    switch a {
    case 1:
        isOn[b] = c == 0
    case 2:
        for i in b...c { isOn[i].toggle() }
    case 3:
        for i in b...c { isOn[i] = false }
    case 4:
        for i in b...c { isOn[i] = true }
    default: fatalError()
    }
}

print(isOn.map { $0 ? 1 : 0 }.map { String($0) }.joined(separator: " "))

