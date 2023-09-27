let n = Int(readLine()!)!
let zeroCount = readLine()!.split(separator: " ").map { Int($0)! }.filter { $0 == 0 }.count
print(min(n - zeroCount, zeroCount))
