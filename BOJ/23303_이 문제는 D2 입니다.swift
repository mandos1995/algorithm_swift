let word = readLine()!.map { String($0.uppercased()) }
var answer = "unrated"
for i in 0..<word.count - 1 {
    if word[i] + word[i + 1] == "D2" {
        answer = "D2"
        break
    }
}
print(answer)
