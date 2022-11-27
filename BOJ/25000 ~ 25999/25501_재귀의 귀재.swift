func recusion(s: [Character], l: Int, r: Int, call: Int) -> (Int, Int) {
    if l >= r {
        return (1, call)
    } else if s[l] != s[r] {
        return (0, call)
    } else {
        return recusion(s: s, l: l + 1, r: r - 1, call: call + 1)
    }
}

let n = Int(readLine()!)!
for _ in 0..<n {
    let s = readLine()!.map { $0 }
    let answer = recusion(s: s, l: 0, r: s.count - 1, call: 1)
    print(answer.0, answer.1)
}
