let n = Int(readLine()!)!
for _ in 0..<n {
    print(String(repeating: "@", count: n * 5))
}
for _ in 0..<n {
    print(String(repeating: "@", count: n))
}
for _ in 0..<n {
    print(String(repeating: "@", count: n * 5))
}
for _ in 0..<2 * n {
    print(String(repeating: "@", count: n))
}
