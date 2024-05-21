let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0], s = input[1]
var answer = false
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let c = input[0], p = input[1]
    if c <= x && s < p {
        answer = true
        break
    }
}
print(answer ? "YES" : "NO")
