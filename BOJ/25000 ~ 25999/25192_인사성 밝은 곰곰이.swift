let n = Int(readLine()!)!
var names: Set<String> = []
var answer = 0

for _ in 0..<n {
    let nickname = readLine()!
    if nickname == "ENTER" {
        names.removeAll()
        continue
    }
    answer += names.contains(nickname) ? 0 : 1
    names.insert(nickname)
}
print(answer)
