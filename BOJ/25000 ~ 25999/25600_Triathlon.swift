let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], d = input[1], g = input[2]
    let score = a == (d + g) ? 2 * a * (d + g) : a * (d + g)
    answer = max(answer, score)
}

print(answer)
