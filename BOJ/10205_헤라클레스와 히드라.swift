func solution() {
    let n = Int(readLine()!)!
    let command = readLine()!
    var answer = n
    for cmd in command {
        answer = cmd == "b" ? answer - 1 : answer + 1
    }
    print(max(0, answer))
}

let n = Int(readLine()!)!
for i in 1...n {
    print("Data Set \(i):")
    solution()
    print()
}
