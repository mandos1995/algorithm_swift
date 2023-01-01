func solution() {
    let k = Int(readLine()!)!
    var answer = 1
    for _ in 0..<k - 1 {
        answer = answer * 2 + 1
    }
    print(answer)
}

let t = Int(readLine()!)!
(1...t).forEach { _ in solution() }
