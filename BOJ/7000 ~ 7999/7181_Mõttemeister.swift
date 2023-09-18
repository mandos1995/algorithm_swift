let a = readLine()!.map { $0 }
let n = Int(readLine()!)!
for _ in 0..<n {
    let b = readLine()!.map { $0 }
    var answer = (0, 0)
    for i in 0..<4 {
        if a[i] == b[i] {
            answer.0 += 1
            answer.1 += 1
        } else if a.contains(b[i]) {
            answer.0 += 1
        }
    }
    print(answer.0, answer.1)
}
