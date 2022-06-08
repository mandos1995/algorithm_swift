func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    for _ in 0..<m {
        _ = readLine()!
    }
    print(n - 1)
}
for _ in 0..<Int(readLine()!)! {
    solution()
}
