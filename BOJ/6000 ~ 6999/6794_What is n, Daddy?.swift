let n = Int(readLine()!)!
var answer = 0

for i in 0...5 {
    for j in i...5 {
        if i + j == n { answer += 1 }
    }
}

print(answer)
