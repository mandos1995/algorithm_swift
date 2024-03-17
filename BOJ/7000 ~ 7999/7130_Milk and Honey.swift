let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], h = input[1]
let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let c = input[0], b = input[1]
    answer += max(c * m, b * h)
}
print(answer)
