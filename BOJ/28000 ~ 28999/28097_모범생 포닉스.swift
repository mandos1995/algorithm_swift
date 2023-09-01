let t = Int(readLine()!)!
let times = readLine()!.split(separator: " ").map { Int($0)! }
let sum = times.reduce(0, +) + (t - 1) * 8
print(sum / 24, sum % 24)

