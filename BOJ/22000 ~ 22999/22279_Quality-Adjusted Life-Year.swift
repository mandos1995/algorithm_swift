let n = Int(readLine()!)!
var total: Double = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    total += (input[0] * input[1])
}
print(total)
