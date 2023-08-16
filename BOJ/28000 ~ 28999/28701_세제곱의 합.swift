let n = Int(readLine()!)!
let sum = (1...n).reduce(0, +)
print(sum)
print(sum * sum)
print((1...n).map { $0 * $0 * $0 }.reduce(0, +))
