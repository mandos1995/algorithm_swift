let n = Int(readLine()!)!
var answer: [(Int, Int)] = []
for i in 1...100 {
    for j in 1...100 {
        if i * j >= n {
            answer.append((i, j))
        }
    }
}

answer.sort {
    $0.0 + $0.1 < $1.0 + $1.1
}

print(answer[0].0, answer[0].1)
