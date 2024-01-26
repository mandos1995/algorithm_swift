let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

func solution() {
    let n = Int(readLine()!)!
    let fivePattern = "++++"
    let five = n / 5
    let remain = n % 5
    var answer: [String] = []
    for _ in 0..<five {
        answer.append(fivePattern)
    }
    answer.append("\(String(repeating: "|", count: remain))")
    print(answer.joined(separator: " "))
}
