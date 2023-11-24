let t = Int(readLine()!)!
let answer = "BCBCDCDADABA".map { String($0) }
for _ in 0..<t {
    solution()
}

func solution() {
    let n = Int(readLine()!)!
    print(n == 1 ? "A" : answer[(n - 2) % 12])
}
