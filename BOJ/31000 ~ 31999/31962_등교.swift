let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], x = input[1]
var answer = -1
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let s = input[0], t = input[1]
    if s + t > x { continue }
    answer = max(answer, s)
}
print(answer)
