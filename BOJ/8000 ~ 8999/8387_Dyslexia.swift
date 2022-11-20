let n = Int(readLine()!)!
let word1 = readLine()!.map { $0 }
let word2 = readLine()!.map { $0 }
var answer = 0

for i in 0..<n {
    if word1[i] != word2[i] { answer += 1 }
}
print(answer)
