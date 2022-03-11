func solution() {
    var fashion: [String: [String]] = [:]
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map { String($0) }
        if fashion[input[1]] == nil {
            fashion[input[1]] = [input[0]]
        } else {
            fashion[input[1]]!.append(input[0])
        }
    }
    var answer = 1
    for f in fashion {
        answer *= (f.value.count + 1)
    }
    print(answer - 1)
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
