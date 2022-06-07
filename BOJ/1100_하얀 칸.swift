var chess: [[Character]] = []
for _ in 0..<8 {
    chess.append(readLine()!.map { $0 })
}
var answer = 0
for y in 0..<8 {
    for x in 0..<8 {
        if (y + x) % 2 == 0 && chess[y][x] == "F" {
            answer += 1
        }
    }
}

print(answer)
