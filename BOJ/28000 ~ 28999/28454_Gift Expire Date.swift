let current = readLine()!
let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    if current <= readLine()! {
        answer += 1
    }
}

print(answer)
