let n = Int(readLine()!)!
var words: [[String]] = []
for _ in 0..<n {
    words.append(readLine()!.map { String($0) })
}
var answer = true
for i in 0..<n {
    var word = ""
    for j in 0..<n {
        word += String(words[j][i])
    }
    if word != words[i].joined() {
        answer = false
        break
    }
}
print(answer ? "YES" : "NO")
