let n = Int(readLine()!)!
let originalText = readLine()!.map { $0 }
let input = readLine()!.map { $0 }
var answer = 0
for i in 0..<n {
    if input[i] != originalText[i] {
        answer += 1
    }
}
print(answer)
