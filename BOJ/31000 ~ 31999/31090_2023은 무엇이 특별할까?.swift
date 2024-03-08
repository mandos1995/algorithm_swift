let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

func solution() {
    let year = Int(readLine()!)!
    let prev = year % 100
    print((year + 1) % prev == 0 ? "Good" : "Bye")
}
