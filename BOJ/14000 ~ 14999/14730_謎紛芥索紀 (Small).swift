let n = Int(readLine()!)!
var sum = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    sum += input[0] * input[1]
}
print(sum)
