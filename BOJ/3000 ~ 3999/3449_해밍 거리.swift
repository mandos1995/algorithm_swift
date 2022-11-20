func solution() {
    let word1 = readLine()!.map { $0 }
    let word2 = readLine()!.map { $0 }
    var answer = 0
    for i in 0..<word1.count {
        answer += word1[i] != word2[i] ? 1 : 0
    }
    print("Hamming distance is \(answer).")
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
