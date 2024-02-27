let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let h = input[0], b = input[1], k = input[2]
    answer += max(0, (b - h) * k)
}
print(answer)
