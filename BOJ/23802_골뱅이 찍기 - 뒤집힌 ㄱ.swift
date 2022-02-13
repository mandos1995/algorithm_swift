let n = Int(readLine()!)!
for _ in 0..<n {
    print(String(repeating: "@", count: 5 * n))
}
for _ in 0..<4 * n {
    print(String(repeating: "@", count: n))
}
