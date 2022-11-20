let n = Int(readLine()!)!
var sum = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    sum = sum + input[1] % input[0]
}
print(sum)
