let emoji = readLine()!
var answer = emoji.count

for e in emoji {
    if e == "_" {
        answer += 5
        continue
    }
    
    if e == ":" {
        answer += 1
    }
}

print(answer)
