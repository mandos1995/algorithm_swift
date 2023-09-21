let n = Int(readLine()!)!
let s = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
var step = 0
for i in 0..<n {
    defer { answer = max(answer, step)}
    if s[i] != 0 {
        step += 1
        continue
    }
    step = 0
}

print(answer)

