func solution() {
    let n = Int(readLine()!)!
    let s = readLine()!.map { $0 }
    let e = readLine()!.map { $0 }
    var count = [0, 0]
    for i in 0..<n {
        if s[i] != e[i] {
            count = s[i] == "W" ? [count[0] + 1, count[1]] : [count[0], count[1] + 1]
        }
    }
    print(count.max()!)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
