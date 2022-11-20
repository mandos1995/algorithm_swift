let n = Int(readLine()!)!
for _ in 0..<n {
    print(String(repeating: "@", count: n), terminator: "")
    print(String(repeating: " ", count: 3 * n), terminator: "")
    print(String(repeating: "@", count: n))
}
for _ in 0..<n {
    print(String(repeating: "@", count: n * 5))
}
for _ in 0..<n {
    print(String(repeating: "@", count: n), terminator: "")
    print(String(repeating: " ", count: 3 * n), terminator: "")
    print(String(repeating: "@", count: n))
}
for _ in 0..<n {
    print(String(repeating: "@", count: n * 5))
}
for _ in 0..<n {
    print(String(repeating: "@", count: n), terminator: "")
    print(String(repeating: " ", count: 3 * n), terminator: "")
    print(String(repeating: "@", count: n))
}
