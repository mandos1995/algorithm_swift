let x = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0

for i in 0..<10 {
    for j in i + 1..<10 {
        answer ^= x[i] | x[j]
        for k in j + 1..<10 {
            answer ^= x[i] | x[j] | x[k]
        }
    }
}

print(answer)
