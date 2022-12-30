let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let t = readLine()!.split(separator: " ").map { Int($0)! }

var currentValue = t[0..<m].reduce(0, +)
var maxValue = currentValue

for i in 0..<n - m {
    currentValue -= t[i]
    currentValue += t[i + m]
    maxValue = max(currentValue, maxValue)
}

print(maxValue)
