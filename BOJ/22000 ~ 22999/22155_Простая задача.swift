let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let i = input[0], f = input[1]
    print((i <= 1 && f <= 2) || (i <= 2 && f <= 1) ? "Yes" : "No")
}
