let n = Int(readLine()!)!
var line: [String] = []
for _ in 0..<n {
    line.append(readLine()!)
}
var answer = 2
for i in 1..<n {
    if line[i] == line[i - 1] {
        continue
    }
    answer += 1
}

print(answer)
