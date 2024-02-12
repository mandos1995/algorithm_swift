let t = Int(readLine()!)!
var answer = 0
for _ in 0..<t { answer += Int(readLine()!)! > 1 ? 1 : 0 }
print(answer)
