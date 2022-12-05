let n = Int(readLine()!)!
let word = readLine()!.map { $0 }
var answer = ""
for i in 0..<n - 1 {
    if word[i + 1] == "J" {
        answer += String(word[i])
    }
}
answer.forEach { print($0) }
