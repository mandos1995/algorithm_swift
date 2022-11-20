let n = Int(readLine()!)!
let standardString = readLine()!.map { String($0) }
let stringCount = standardString.count
var answer = standardString
for _ in 0..<n - 1 {
    let input = readLine()!.map { String($0) }
    for i in 0..<stringCount {
        if standardString[i] != input[i] {
            answer[i] = "?"
        }
    }
}

print(answer.joined(separator: ""))
