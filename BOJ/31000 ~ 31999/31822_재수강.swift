let code = readLine()!
var answer = 0
for _ in 0..<Int(readLine()!)! {
    if code.prefix(5) == readLine()!.prefix(5) { answer += 1 }
}

print(answer)
